# Generated by Django 2.1.7 on 2019-03-30 17:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_remove_news_tags'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='tags',
            field=models.ManyToManyField(to='core.Tag'),
        ),
    ]
