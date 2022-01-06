from django.contrib.auth.models import AbstractUser
from django.core.validators import FileExtensionValidator
from django.db import models
from ckeditor.fields import RichTextField


class User(AbstractUser):
    class Meta:
        ordering = ["created_date"]
        unique_together = ['username' ,'password']
    username = models.CharField(max_length=20, null=True, unique=True)
    password = models.CharField(max_length=100)
    avatar = models.ImageField(upload_to='Image-User/%Y/%m')
    # firstname = models.CharField(max_length=20, null=True)
    # lastname = models.CharField(max_length=20, null=True)
    email = models.EmailField(max_length=50, null=True, unique=True)
    phone = models.CharField(max_length=100, null=True, unique=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)


class User_Role(models.Model):
    role = models.SmallIntegerField(null=True, unique=False)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    User = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)


class Buses(models.Model):
    class Meta:
        ordering = ["created_date"]

    active = models.BooleanField(default=True)
    license_plates = models.CharField(max_length=50, null=True, unique=True)
    description = models.CharField(max_length=50, null=True, unique=False)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Chuyến Xe: " + self.license_plates


class BusesLine(models.Model):
    class Meta:
        ordering = ["created_date"]

    active = models.BooleanField(default=True)
    departure = models.CharField(max_length=50, null=True, unique=False)
    destination = models.CharField(max_length=50, null=True, unique=False)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Tuyến Xe: " + self.departure + " - " + self.destination


class BusArrangement(models.Model):
    class Meta:
        ordering = ["created_date"]

    active = models.BooleanField(default=True)
    name = models.CharField(max_length=200, null=True)
    description = models.TextField(null=True, blank=True)
    departure = models.CharField(max_length=50, null=True, unique=False)
    departure_time = models.DateTimeField(null=True, unique=False)
    destination = models.CharField(max_length=50, null=True, unique=False)
    next_hour = models.DateTimeField(null=True, unique=False)
    departure_day = models.DateTimeField(null=True, unique=False)
    ticket_total = models.SmallIntegerField(null=True)
    ticket_price = models.DecimalField(max_digits=6, decimal_places=2, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    User = models.ForeignKey(User, models.SET_NULL, null=True)
    BusesLine = models.ForeignKey(BusesLine, models.SET_NULL, null=True)
    Buses = models.ForeignKey(Buses, related_name="buses", on_delete=models.CASCADE, null=True)

    # def __str__(self):
    #     return "Sắp xếp xe khách - Tuyến " + self.departure


class Ticket(models.Model):
    class Meta:
        ordering = ["created_date"]

    content = RichTextField()
    payments_method = models.SmallIntegerField(null=True, unique=True)
    payments_status = models.SmallIntegerField(null=True, unique=True)
    ticket_status = models.SmallIntegerField(null=True, unique=True)
    ticket_price = models.IntegerField(null=True, unique=True)
    ticket_quantity = models.SmallIntegerField(null=True, unique=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    BusArrangement = models.ForeignKey(BusArrangement, models.SET_NULL, null=True)
    User = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)

    # Mới update
    isPaid = models.BooleanField(default=False)
    username = models.CharField(max_length=200, null=True, blank=True)
    phone = models.CharField(max_length=100, null=True, unique=True)
    paymentMethod = models.CharField(max_length=200, null=True, blank=True)

    @property
    def get_total(self):
        total = self.BusArrangement.ticket_price * self.ticket_quantity
        return total

    def __str__(self):
        return str(self.created_date)


class CommentBusArrangementDetail(models.Model):
    class Meta:
        ordering = ["-id"]

    content = models.TextField()
    busarrangement_detail = models.ForeignKey(BusArrangement, related_name="cmt_busarrangement",
                                              on_delete=models.CASCADE, null=False)
    customer = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    update_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)


# Dich vu chuyen xe den cac khu vuc du lich

class Product(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    name = models.CharField(max_length=200, null=True)
    price = models.DecimalField(max_digits=7, decimal_places=2)
    digital = models.BooleanField(default=False, null=True, blank=False)
    image = models.ImageField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    datetime = models.DateTimeField(auto_now=False, auto_now_add=False, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    action = models.BooleanField(default=False, null=True, blank=False)

    _id = models.AutoField(primary_key=True, editable=False)
    rating = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    numReviews = models.IntegerField(null=True, blank=True, default=0)

    # bus = models.ForeignKey(Buses, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    @property
    def imageURL(self):
        try:
            url = self.image.url
        except:
            url = ''
        return url


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    paymentMethod = models.CharField(max_length=200, null=True, blank=True)
    date_ordered = models.DateTimeField(auto_now_add=True)
    totalPrice = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    isPaid = models.BooleanField(default=False)
    paidAt = models.DateTimeField(auto_now_add=False, null=True, blank=True)
    createAt = models.DateTimeField(auto_now_add=False)
    complete = models.BooleanField(default=False)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return str(self.createAt)

    @property
    def get_cart_total(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.get_total for item in orderitems])
        return total

    @property
    def get_cart_items(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.quantity for item in orderitems])
        return total


class OrderItem(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True, blank=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True, blank=True)
    name = models.CharField(max_length=200, null=True, blank=True)
    quantity = models.IntegerField(default=0, null=True, blank=True)
    price = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return str(self.name)

    @property
    def get_total(self):
        total = self.product.price * self.quantity
        return total


class Address(models.Model):
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True, blank=True)
    address = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=200, null=True)
    state = models.CharField(max_length=200, null=True)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return self.address


class Review(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    name = models.CharField(max_length=200, null=True, blank=True)
    rating = models.IntegerField(null=True, blank=True, default=0)
    comment = models.TextField(null=True, blank=True)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return str(self.rating)


class Report(models.Model):
    class Meta:
        unique_together = ('creator', 'user_is_reported')

    reason = models.TextField(max_length=300, null=False)
    image = models.ImageField(upload_to='uploads/reports/%Y/%m',
                              validators=[FileExtensionValidator(['png', 'jpg', 'jpeg'])], blank=True)
    reported_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    creator = models.ForeignKey(User, on_delete=models.SET_NULL,
                                null=True, related_name='user_create_report')
    user_is_reported = models.ForeignKey(User, on_delete=models.SET_NULL,
                                         null=True, related_name='user_is_reported')

    def __str__(self):
        return self.reason[:20]

    # admin get image
    def admin_image(self):
        return '<img src="%s"/>' % self.image
