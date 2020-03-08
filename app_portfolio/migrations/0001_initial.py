# Generated by Django 3.0.3 on 2020-03-05 17:47

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('short_description', models.TextField(max_length=200)),
                ('long_description', models.TextField()),
                ('quote_1', models.TextField()),
                ('quote_2', models.TextField(blank=True)),
                ('background_picture', models.ImageField(upload_to='photos/%Y/%m/%d/')),
                ('profile_picture', models.ImageField(upload_to='photos/%Y/%m/%d/')),
            ],
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150)),
                ('description', models.TextField()),
                ('github_link', models.URLField(max_length=100)),
                ('live_link', models.URLField(blank=True, max_length=150)),
                ('project_language', models.CharField(max_length=100)),
                ('framework', models.CharField(blank=True, max_length=100)),
                ('development_year', models.CharField(blank=True, max_length=10)),
                ('upload_time', models.DateTimeField(default=datetime.datetime.now)),
                ('project_image', models.ImageField(upload_to='photos/%Y/%m/%d/')),
                ('is_featured', models.BooleanField(default=False)),
                ('is_published', models.BooleanField(default=True)),
            ],
        ),
    ]
