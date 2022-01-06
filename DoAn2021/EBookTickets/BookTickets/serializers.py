from rest_framework.fields import SerializerMethodField
from rest_framework.serializers import ModelSerializer
from .models import Buses, BusesLine, BusArrangement, User, Ticket, Product, Report, CommentBusArrangementDetail


class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "first_name", "last_name", "email", "username", "password", "avatar"]
        extra_kwargs = {
            'password': {'write_only': 'true'}
        }

    def create(self, validated_data):
        user = User(**validated_data)
        # user.first_name = validated_data['first_name']
        # user.last_name = validated_data['last_name']
        user.set_password(validated_data['password'])
        user.save()

        return user
    def get__id(self, obj):
        return obj.id
    def get_name(self, obj):
        name = obj.first_name
        if name == '':
            name = obj.email

        return name


class BusesSerializer(ModelSerializer):
    class Meta:
        model = Buses
        fields = ["license_plates", "description", "created_date", "updated_date"]


class BusesLineSerializer(ModelSerializer):
    class Meta:
        model = BusesLine
        # fields = ["departure", "destination", "created_date", "updated_date"]
        fields = '__all__'

class BusArrangementSerializer(ModelSerializer):
    class Meta:
        Buses = BusesLineSerializer()
        BusesLine = BusesLineSerializer()
        model = BusArrangement
        # fields = ["name", "description", "departure", "departure_time", "destination", "next_hour", "departure_day", "ticket_total", "ticket_price", "created_date",
        #           "updated_date", "User", "Buses", "BusesLine"]
        fields = '__all__'

class CmtBusArrangementSerializers(ModelSerializer):

    class Meta:
        model = CommentBusArrangementDetail
        fields = ["id", "content", "busarrangement_detail", "created_date", "active"]
class ProductSerializer(ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'


class TicketSerializer(ModelSerializer):
    class Meta:
        model = Ticket
        fields = '__all__'

class ReportSerializer(ModelSerializer):
    class Meta:
        model = Report
        fields = '__all__'
