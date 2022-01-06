from django.contrib import admin
from django.utils.html import mark_safe
from .models import Buses, BusesLine, BusArrangement, Ticket, User, User_Role, Product, Order, OrderItem, Address, \
    Report, CommentBusArrangementDetail
from django import forms
from ckeditor_uploader.widgets import CKEditorUploadingWidget


class BusArrangementAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "created_date", "User", "Buses", "BusesLine"]
    search_fields = ["Buses__license_plates", "BusesLine__departure", "BusesLine__destination"]
    list_filter = ["User", "Buses__license_plates"]


class BusArrangementInline(admin.StackedInline):
    model = BusArrangement
    pk_name = 'BusesLine'
    pk_name = 'Buses'


class BusesAdmin(admin.ModelAdmin):
    search_fields = ["license_plates", "description"]

    inlines = (BusArrangementInline,)


class UserAdmin(admin.ModelAdmin):
    class Media:
        css = {
            'all': ('/static/css/main.css',)
        }

    list_display = ["id", "last_name", "first_name", "phone", "email", "created_date"]
    search_fields = ["last_name", "first_name"]
    readonly_fields = ["image"]

    def image(self, User):
        return mark_safe(
            "<img src='/static/{img_url}' alt='{alt}' width='120px' />".format(img_url=User.avatar.name,
                                                                               alt=User.avatar))


class TicketForm(forms.ModelForm):
    content = forms.CharField(widget=CKEditorUploadingWidget)

    class Meta:
        model = Ticket
        fields = '__all__'


class TicketAdmin(admin.ModelAdmin):
    list_display = ["id", "payments_method", "payments_status", "ticket_status", "ticket_quantity", "created_date"]
    search_fields = ["", ""]

    form = TicketForm


class ReportAdmin(admin.ModelAdmin):
    list_display = ['id', 'reason', 'image', 'reported_date', 'creator', 'user_is_reported']


class BusesLineAdmin(admin.ModelAdmin):
    inlines = (BusArrangementInline,)

class CmtBusArrangementAdmin(admin.ModelAdmin):
    list_display = ['id', 'content', 'customer', 'created_date']

class BookTicketsAppAdminSite(admin.AdminSite):
    site_header = 'HỆ THỐNG QUẢN LÝ BÁN VÉ'


class searchAdmin(admin.ModelAdmin):
    search_fields = ('name',)


admin_site = BookTicketsAppAdminSite('MyBookTickets')

# admin.site.register(User, UserAdmin)
# admin.site.register(User_Role)
# Register your models here.
# admin.site.register(Buses, BusesAdmin)
# admin.site.register(BusesLine, BusesLineAdmin)
# admin.site.register(BusArrangement, BusArrangementAdmin)
# admin.site.register(Ticket, TicketAdmin)


admin_site.register(User, UserAdmin)
admin_site.register(User_Role)
admin_site.register(Buses, BusesAdmin)
admin_site.register(BusesLine, BusesLineAdmin)
admin_site.register(BusArrangement, BusArrangementAdmin)
admin_site.register(CommentBusArrangementDetail, CmtBusArrangementAdmin)
admin_site.register(Ticket, TicketAdmin)
admin_site.register(Product, searchAdmin)
admin_site.register(Order)
admin_site.register(OrderItem)
admin_site.register(Address)
admin_site.register(Report, ReportAdmin)
