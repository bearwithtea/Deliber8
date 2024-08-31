from django.contrib import admin
from django.urls import path
from landing import views  # Import the views from the 'landing' app

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),  # Define the index view correctly
]
