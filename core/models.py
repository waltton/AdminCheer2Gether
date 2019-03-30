from django.db import models


class Sport(models.Model):
    title = models.TextField()
    slug = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True)


class Tag(models.Model):
    title = models.TextField()
    slug = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True)


class User(models.Model):
    username = models.TextField()
    twitter_id = models.TextField()  # tem que ver q dados precisamos do twitter

    created_at = models.DateTimeField(auto_now_add=True)


class News(models.Model):
    sport = models.ForeignKey(Sport, on_delete=models.PROTECT, null=True)
    title = models.TextField()
    message = models.TextField()
    media = models.URLField()
    tags = models.ManyToManyField(Tag)

    created_at = models.DateTimeField(auto_now_add=True)


class Reaction(models.Model):
    news = models.ForeignKey(News, on_delete=models.PROTECT)
    user = models.ForeignKey(User, on_delete=models.PROTECT)
    message = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True)


class UserGroup(models.Model):
    title = models.TextField()
    user = models.ManyToManyField(User)

    created_at = models.DateTimeField(auto_now_add=True)
