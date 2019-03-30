from django.contrib import admin

from core.models import Tag, User, News, Reaction, UserGroup


admin.site.register(Tag)
admin.site.register(User)
admin.site.register(News)
admin.site.register(Reaction)
admin.site.register(UserGroup)
