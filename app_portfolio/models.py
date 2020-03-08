from django.db import models
from datetime import datetime

from ckeditor.fields import RichTextField


class Project(models.Model):
    title = models.CharField(max_length=150)
    description = RichTextField()
    github_link = models.URLField(max_length=100)
    live_link = models.URLField(max_length=150, blank=True)
    project_language = models.CharField(max_length=100)
    framework = models.CharField(max_length=100, blank=True)
    development_year = models.CharField(max_length=10, blank=True)
    upload_time = models.DateTimeField(default=datetime.now)
    project_image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    is_featured = models.BooleanField(default=False)
    is_published = models.BooleanField(default=True)

    def __str__(self):
        return self.title


class About(models.Model):
    name = models.CharField(max_length=100)
    designation = models.CharField(max_length=200, default="Software Engineer")
    short_description = models.TextField(max_length=200)
    long_description = RichTextField()
    quote_1 = models.TextField()
    quote_2 = models.TextField(blank=True)
    background_picture = models.ImageField(upload_to='photos/%Y/%m/%d/')
    profile_picture = models.ImageField(upload_to='photos/%Y/%m/%d/')
    is_published = models.BooleanField(default=True)

    def __str__(self):
        return self.name


