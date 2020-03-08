from django.urls import path
from app_portfolio import views

app_name = 'portfolio'

urlpatterns = [
    path('', views.index, name='home'),
    path('projects', views.projects, name='projects'),
    path('project/<int:project_id>', views.project_details, name='project_details'),
    path('about', views.about, name='about'),
]