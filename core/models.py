from django.db import models
from django.contrib.postgres.fields import JSONField


class Sport(models.Model):
    title = models.TextField(unique=True)
    slug = models.TextField(unique=True)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.title)


class Tag(models.Model):
    title = models.TextField(unique=True)
    slug = models.TextField(unique=True)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.title)


class User(models.Model):
    username = models.TextField(unique=True)
    twitter_id = models.TextField()  # tem que ver q dados precisamos do twitter

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.username)


class UserTag(models.Model):
    class Meta:
        unique_together = ('user', 'tag', )

    user = models.ForeignKey(User, on_delete=models.PROTECT)
    tag = models.ForeignKey(Tag, on_delete=models.PROTECT)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.user)


class News(models.Model):
    sport = models.ForeignKey(Sport, on_delete=models.PROTECT, null=True)
    title = models.TextField()
    message = models.TextField()
    media = models.URLField()
    banner_media = models.URLField(null=True, blank=True)
    tags = models.ManyToManyField(Tag)
    banner = models.BooleanField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.title)


class Reaction(models.Model):
    news = models.ForeignKey(News, on_delete=models.PROTECT)
    user = models.ForeignKey(User, on_delete=models.PROTECT)
    message = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.message)


class UserGroup(models.Model):
    title = models.TextField()
    user = models.ManyToManyField(User)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.title)


class GroupMessage(models.Model):
    user = models.ForeignKey(User, on_delete=models.PROTECT)
    group = models.ForeignKey(UserGroup, on_delete=models.PROTECT)

    message = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {} => {}'.format(self.id, self.user.username, self.message)


class WebSocketMessages(models.Model):
    data = JSONField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '#{}: {}'.format(self.id, self.data)
