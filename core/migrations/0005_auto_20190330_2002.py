# Generated by Django 2.1.7 on 2019-03-30 20:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_news_tags'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='banner',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='news',
            name='banner_media',
            field=models.URLField(null=True),
        ),
    ]
