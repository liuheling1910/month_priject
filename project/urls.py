"""month_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
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
from . import views

urlpatterns = [
    path('',views.index,name='index'),
    path('detail/<int:id>/',views.detail,name = 'detail'),
    path('list/',views.art_list,name = 'list'),
    path('register/',views.regiset,name = 'register'),
    path('logout/',views.blogout,name = 'logout'),
    path('comment/',views.comment,name = 'comment'),
    path('login/',views.blogin,name = 'login'),
]
