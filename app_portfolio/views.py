from django.shortcuts import render, get_object_or_404
from .models import Project, About
from django.core.paginator import Paginator


def index(request):
    about_me = About.objects.order_by('-id').filter(is_published=True)[:1]
    featured_projects = Project.objects.order_by('-development_year').filter(is_published=True, is_featured=True)[:3]

    context = {
        'about_me': about_me,
        'projects': featured_projects
    }
    return render(request, 'app_portfolio/index.html', context)


def projects(request):
    projects = Project.objects.order_by('-development_year').filter(is_published=True)

    paginator = Paginator(projects, 6)
    page = request.GET.get('page')
    paged_projects = paginator.get_page(page)

    context = {'projects': paged_projects}
    return render(request, 'app_portfolio/projects.html', context)


def project_details(request, project_id):
    project = get_object_or_404(Project, pk=project_id)

    context = {'project':project}
    return render(request, 'app_portfolio/project_details.html', context)


def about(request):
    about_me = About.objects.order_by('-id').filter(is_published=True)[:1]
    context = {'about_me': about_me}
    return render(request, 'app_portfolio/about.html', context)
