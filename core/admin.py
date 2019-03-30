from django.contrib import admin

from core.models import Sport, Tag, User, News, Reaction, UserGroup, GroupMessage


class NewsAdmin(admin.ModelAdmin):
    model = News
    list_display = ('sport', 'title', 'get_tags', )

    list_filter = ('sport', 'tags', )

    def get_tags(self, obj):
        return ", ".join([t.slug for t in obj.tags.all()])


admin.site.register(Sport)
admin.site.register(Tag)
admin.site.register(User)
admin.site.register(News, NewsAdmin)
admin.site.register(Reaction)
admin.site.register(UserGroup)
admin.site.register(GroupMessage)
