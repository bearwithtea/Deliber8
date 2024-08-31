from django.db import models
from django.contrib.auth.models import AbstractUser

class PNM(models.Model):
    name = models.CharField(max_length=100)
    phone_number = models.CharField(max_length=15)
    email = models.EmailField(unique=True)
    resume = models.FileField(upload_to='resumes/')
    photo = models.ImageField(upload_to='photos/')
    score = models.FloatField(default=0.0)

    def __str__(self):
        return self.name
