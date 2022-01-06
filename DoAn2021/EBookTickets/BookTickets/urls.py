import debug_toolbar
from django.contrib import admin
from django.urls import path, re_path, include
from . import views
from .admin import admin_site
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('busess', views.BusesViewSet)
router.register('buseslines', views.BusesLineViewSet)
router.register('busarrangements', views.BusArrangementViewSet)
router.register('cmt_busarrangements', views.CmtBusArrangementViewSet, basename='cmt_busarrangements')
router.register('users', views.UserViewSet)
router.register('product', views.ProductViewSet)
router.register('ticket', views.TicketViewSet)
router.register('report', views.ReportViewSet)
# /BookTickets/ - GET
# /BookTickets/ - POST
# /BookTickets/{Buses_id}/ - GET
# /BookTickets/{Buses_id}/ - POST
# /BookTickets/{Buses_id}/ - DELETE

urlpatterns = [
    # path('', views.index, name=""), vao` trang chu
    path('', include(router.urls)),

    path('admin/', admin_site.urls),

    path('login/', views.login),
    path('welcome/<str:year>/', views.welcome, name="welcome"),
    re_path(r'welcome2/(?P<year>[0-9]{4})/$', views.welcome2, name="welcome"),
    path('test/', views.TestView.as_view()), # 8,9,10-các trang web con mình cần map dô

    # defind end_point to get client_id and client_secret
    path('oauth2-info/', views.AuthInfo.as_view()),

#checkout, booking
    path('', views.getProducts, name="products"),
    path('product/<str:pk>/', views.getProduct, name="product"),
    # path('product/<str:pk>/', views.productDetail, name="product"),

    # path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),

    path('update_item/', views.updateItem, name="update_item"),
    path('process_order/', views.processOrder, name="process_order"),

    #order ticket
]