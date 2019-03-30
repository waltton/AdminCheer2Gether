# Generated by Django 2.1.7 on 2019-03-30 22:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0007_usertag'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usertag',
            old_name='tags',
            new_name='tag',
        ),
        migrations.AlterField(
            model_name='sport',
            name='slug',
            field=models.TextField(unique=True),
        ),
        migrations.AlterField(
            model_name='sport',
            name='title',
            field=models.TextField(unique=True),
        ),
        migrations.AlterField(
            model_name='tag',
            name='slug',
            field=models.TextField(unique=True),
        ),
        migrations.AlterField(
            model_name='tag',
            name='title',
            field=models.TextField(unique=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='username',
            field=models.TextField(unique=True),
        ),
        migrations.AlterUniqueTogether(
            name='usertag',
            unique_together={('user', 'tag')},
        ),
    ]