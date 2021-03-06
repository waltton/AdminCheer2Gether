# Generated by Django 2.1.7 on 2019-03-30 20:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_auto_20190330_2002'),
    ]

    operations = [
        migrations.CreateModel(
            name='GroupMessage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('group', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='core.UserGroup')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='core.User')),
            ],
        ),
        migrations.AlterField(
            model_name='news',
            name='banner_media',
            field=models.URLField(blank=True, null=True),
        ),
    ]
