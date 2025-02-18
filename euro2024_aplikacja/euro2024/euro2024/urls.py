"""
URL configuration for euro2024 project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from euro2024app import views

urlpatterns = [
    path("", views.index, name="index"),
    path("add_player", views.add_player, name="add_player"),
    path("add_match", views.add_match, name="add_match"),
    path("add_result", views.add_result, name="add_result"),
    path("add_statistic", views.add_statistic, name="add_statistic"),
    path("show_result", views.show_result, name="show_result"),
    path("show_groups", views.show_groups, name="show_groups"),
    path('admin/', admin.site.urls),
]
