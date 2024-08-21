# users/models.py
from django.contrib.auth.models import AbstractUser
from django.db import models
from users import validators  # Ensure this import is correct

class CustomUser(AbstractUser):
    phone_number = models.CharField(max_length=25) 

    def __str__(self):
        return self.username
