from rest_framework.permissions import BasePermission, SAFE_METHODS


# class UserPermission(BasePermission):
#
#     def has_permission(self, request, view):
#         # if request.user.is_superuser:
#         #     return True
#         # elif request.method in ['PUT', 'PATCH', 'DELETE']:
#         #     return request.user.is_superuser
#         # return request.user.is_authenticated
#         return True
class BusesPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated

class BusArrangementPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated
#
class CommentBusArrangementDetailPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated

class TicketPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated

class ProductPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated

class ReviewPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated
class ReportPermission(BasePermission):

    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        elif request.method in [SAFE_METHODS, 'PUT', 'PATCH', 'DELETE']:
            return request.user.is_superuser
        return request.user.is_authenticated
