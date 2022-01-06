from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from drf_yasg.utils import swagger_auto_schema
from django.conf import settings

from rest_framework import viewsets, permissions, generics, status
from rest_framework.decorators import action, api_view
from rest_framework.response import Response
from rest_framework.parsers import MultiPartParser, JSONParser
from rest_framework.pagination import PageNumberPagination
from rest_framework.views import APIView
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from .models import Buses, BusesLine, BusArrangement, User, CommentBusArrangementDetail
from .permission import *
from .serializers import BusesSerializer, BusesLineSerializer, BusArrangementSerializer, UserSerializer, \
    ProductSerializer, TicketSerializer, ReportSerializer, CmtBusArrangementSerializers

import json
import datetime
from .models import *
from django.http import JsonResponse
from .utils import cartData, guestOrder
from django.views.decorators.csrf import csrf_exempt


class AuthInfo(APIView):
    def get(self, request):
        return Response(settings.OAUTH2_INFO, status=status.HTTP_200_OK)


class UserViewSet(viewsets.ViewSet,
                  # generics.ListAPIView,
                  generics.CreateAPIView,
                  generics.RetrieveAPIView,
                  generics.UpdateAPIView):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerializer
    parser_classes = [MultiPartParser, ]

    # check user info to get detail user info
    def get_permissions(self):
        if self.action == 'get_current_user':
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    @action(methods=['get'], detail=False, url_path="current-user")
    def get_current_user(self, request):
        return Response(self.serializer_class(request.user).data, status=status.HTTP_200_OK)

    def get_permissions(self):
        if self.action == 'retrieve':
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn 1 người dùng",
        responses={
            status.HTTP_200_OK: UserSerializer()
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-User", url_name="hide-User")
    # /User/{pk}/hide_User
    def hide_User(self, request, pk):
        try:
            u = User.objects.get(pk=pk)
            u.active = False
            u.save()
        except User.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=UserSerializer(u, context={'request': request}).data,
                        status=status.HTTP_200_OK)


class BusesViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Buses.objects.all()
    serializer_class = BusesSerializer

    # swagger_schema = None

    # permission_classes = [permissions.IsAuthenticated]

    # def get_permissions(self):
    #     if self.action == 'list':
    #         return [permissions.AllowAny()]
    #
    #     return [permissions.IsAuthenticated()]

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn 1 chuyến xe",
        responses={
            status.HTTP_200_OK: BusesSerializer()
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-Buses", url_name="hide-Buses")
    # /Buses/{pk}/hide_Buses
    def hide_Buses(self, request, pk):
        try:
            b = BusesLine.objects.get(pk=pk)
            b.active = False
            b.save()
        except Buses.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=BusesSerializer(b, context={'request': request}).data,
                        status=status.HTTP_200_OK)


class BusesLineViewSet(viewsets.ModelViewSet):
    queryset = BusesLine.objects.filter()
    serializer_class = BusesLineSerializer

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn 1 tuyến xe",
        responses={
            status.HTTP_200_OK: BusesLineSerializer()
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-BusesLine", url_name="hide-BusesLine")
    # /BusesLine/{pk}/hide_BusesLine
    def hide_BusesLine(self, request, pk):
        try:
            bl = BusesLine.objects.get(pk=pk)
            bl.active = False
            bl.save()
        except BusesLine.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=BusesLineSerializer(bl, context={'request': request}).data,
                        status=status.HTTP_200_OK)


class PostPagination(PageNumberPagination):
    page_size = 10


# class BusArrangementViewSet(viewsets.ViewSet, generics.ListAPIView):
class BusArrangementViewSet(viewsets.ModelViewSet):
    queryset = BusArrangement.objects.filter(active=True)
    serializer_class = BusArrangementSerializer

    # pagination_class = PostPagination

    # api nạp chuyến xe
    def get_queryset(self):
        BookTickets = BusArrangement.objects.filter(active=True)

        q = self.request.query_params.get('q')
        if q is not None:
            BookTickets = BookTickets.filter(name__contains=q)
        busarrangements_id = self.request.query_params.get('busess_id')
        if busarrangements_id is not None:
            BookTickets = BookTickets.filter(busess_id=busarrangements_id)
        return BookTickets

    @action(methods=['get'], detail=True, url_path='buses')
    def get_buses(self, request, pk):
        busarangement = Buses.objects.get(pk=pk)
        buses = busarangement.buses.filter(active=True)

        kw = request.query_params.get('kw')
        if kw is not None:
            buses = buses.filter(name__icontains=kw)
        return Response(BusesSerializer(buses, many=True).data,
                        status=status.HTTP_200_OK)

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn 1 chuyến xe khởi tạo",
        responses={
            status.HTTP_200_OK: BusArrangementSerializer()
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-BusArrangement", url_name="hide-BusArrangement")
    # /BusArrangement/{pk}/hide_BusArrangement
    def hide_BusArrangement(self, request, pk):
        try:
            ba = BusArrangement.objects.get(pk=pk)
            ba.active = False
            ba.save()
        except BusArrangement.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=BusArrangementSerializer(ba, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'], detail=True, url_path='add_comment')  # xong
    def add_comment(self, request, pk):
        content = request.data.get('content')
        if content:
            c = CommentBusArrangementDetail.objects.create(content=content,
                                                           busarrangement_detail=self.get_object(),
                                                           customer=request.user)
            return Response(CmtBusArrangementSerializers(c).data, status=status.HTTP_201_CREATED)

        return Response(status=status.HTTP_400_BAD_REQUEST)


class CmtBusArrangementViewSet(viewsets.ModelViewSet, generics.RetrieveAPIView, generics.CreateAPIView,
                               generics.UpdateAPIView,
                               generics.DestroyAPIView):
    queryset = CommentBusArrangementDetail.objects.filter(active=True)
    serializer_class = CmtBusArrangementSerializers
    permission_classes = [CommentBusArrangementDetailPermission]
    parser_classes = [MultiPartParser, JSONParser]

    def destroy(self, request, *args, **kwargs):
        if request.user == self.get_object().customer:
            return super().destroy(request, *args, **kwargs)
        return Response(status=status.HTTP_403_FORBIDDEN)

    def partial_update(self, request, *args, **kwargs):
        if request.user == self.get_object().customer:
            return super().partial_update(request, *args, **kwargs)
        return Response(status=status.HTTP_403_FORBIDDEN)


class ProductViewSet(viewsets.ModelViewSet):
    serializer_class = ProductSerializer
    queryset = Product.objects.all()

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn 1 chuyến du lịch",
        responses={
            status.HTTP_200_OK: ProductSerializer
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-Product", url_name="hide-Product")
    # /Product/{pk}/hide_Product
    def hide_Product(self, request, pk):
        try:
            b = Product.objects.get(pk=pk)
            b.active = False
            b.save()
        except Product.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=ProductSerializer(b, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    def get_paginated_response(self, data):
        return Response(data)


class ReportViewSet(viewsets.ModelViewSet):
    serializer_class = ReportSerializer
    queryset = Report.objects.all()


@api_view(['GET'])
def getProducts(request):
    query = request.query_params.get('keyword')
    if query == None:
        query = ''

    products = Product.objects.filter(
        name__icontains=query).order_by('-createdAt')

    page = request.query_params.get('page')
    paginator = Paginator(products, 5)

    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    if page == None:
        page = 1

    page = int(page)
    print('Page:', page)
    serializer = ProductSerializer(products, many=True)
    return Response({'products': serializer.data, 'page': page, 'pages': paginator.num_pages})


@api_view(['GET'])
def getProduct(request, pk):
    product = Product.objects.get(_id=pk)
    serializer = ProductSerializer(product, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def addTicketItems(request):
    data = request.data
    # (1) Create order
    ticket = Ticket.objects.create(
        username=data['username'],
        phone=data['phone'],
        ticket_price=data['ticket_price'],
    )

    serializer = TicketSerializer(ticket, many=False)
    return Response(serializer.data)


class TicketViewSet(viewsets.ModelViewSet):
    serializer_class = TicketSerializer
    queryset = Ticket.objects.all()

    @swagger_auto_schema(
        operation_description="API này dùng để ẩn booking",
        responses={
            status.HTTP_200_OK: TicketSerializer
        }
    )
    @action(methods=['post'], detail=True,
            url_path="hide-Ticket", url_name="hide-Ticket")
    # /Product/{pk}/hide_Product
    def hide_Ticket(self, request, pk):
        try:
            b = Ticket.objects.get(pk=pk)
            b.active = False
            b.save()
        except Ticket.DoesNotExit:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=TicketSerializer(b, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    def get_paginated_response(self, data):
        return Response(data)


def index(request):
    return render(request, template_name='index.html',
                  context={'name': 'Tuan Anh'})


def login(request):
    return render(request, template_name='login.html',
                  context={'name': 'Tuan Anh'})


def welcome(request, year):  # các trang web con mình cần map dô
    return HttpResponse("HELLO " + str(year))
    # return render(request, template_name='index - Copy.html',
    #               context={'name': 'Tuan Anh'})


def welcome2(request, year):  # các trang web con mình cần map dô
    return HttpResponse("WELCOME " + str(year))


class TestView(View):  # các trang web con mình cần map dô
    def get(self, request):
        return HttpResponse("TRANG BÁO CÁO")

    def post(self, request):
        pass


# product
def service(request):
    data = cartData(request)

    cartItems = data['cartItems']

    products = Product.objects.all()
    context = {'products': products, 'cartItems': cartItems}
    return render(request, 'service/service.html', context)


def cart(request):
    data = cartData(request)

    cartItems = data['cartItems']
    order = data['order']
    items = data['items']

    context = {'items': items, 'order': order, 'cartItems': cartItems}
    return render(request, 'service/cart.html', context)


def checkout(request):
    data = cartData(request)

    cartItems = data['cartItems']
    order = data['order']
    items = data['items']

    context = {'items': items, 'order': order, 'cartItems': cartItems}
    return render(request, 'service/checkout.html', context)


def updateItem(request):
    data = json.loads(request.body)
    productId = data['productId']
    action = data['action']

    print('Action:', action)
    print('ProductId:', productId)

    customer = request.user.customer
    product = Product.objects.get(id=productId)
    order, created = Order.objects.get_or_create(customer=customer, complete=False)

    orderItem, created = OrderItem.objects.get_or_create(order=order, product=product)

    if action == 'add':
        orderItem.quantity = (orderItem.quantity + 1)
    elif action == 'remove':
        orderItem.quantity = (orderItem.quantity - 1)

    orderItem.save()

    if orderItem.quantity <= 0:
        orderItem.delete()

    return JsonResponse('Item was added', safe=False)


@csrf_exempt
def processOrder(request):
    transaction_id = datetime.datetime.now().timestamp()
    data = json.loads(request.body)

    if request.user.is_authenticated:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)

    else:
        customer, order = guestOrder(request, data)

    total = float(data['form']['total'])
    order.transaction_id = transaction_id

    if total == order.get_cart_total:
        order.complete = True
        order.save()

    if order.shipping == True:
        Address.objects.create(
            customer=customer,
            order=order,
            address=data['shipping']['address'],
            city=data['shipping']['city'],
            state=data['shipping']['state'],
            zipcode=data['shipping']['zipcode'],
        )

    return JsonResponse('Payment completed', safe=False)
