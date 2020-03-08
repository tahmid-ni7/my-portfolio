from django.contrib import admin
from . models import Project, About

# Register your models here.

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('id','title','project_language', 'framework', 'is_featured', 'is_published')
    list_editable = ('is_featured', 'is_published')
    list_display_links = ('id', 'title')
    search_fields = ('title', 'project_language', 'framework')
    list_filter = ('project_language',)
    list_per_page = 20

admin.site.register(Project, ProjectAdmin)

class AboutAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'is_published')
    list_display_links = ('id', 'name')
    list_editable = ('is_published',)

admin.site.register(About, AboutAdmin)