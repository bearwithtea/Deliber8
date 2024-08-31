from django.db import models
from users.models import User
from pnm.models import PNM

class Vote(models.Model):
    voter = models.ForeignKey(User, on_delete=models.CASCADE)
    pnm = models.ForeignKey(PNM, on_delete=models.CASCADE)
    vote_value = models.IntegerField()

    class Meta:
        unique_together = ('voter', 'pnm')

    def __str__(self):
        return f"{self.voter.email} -> {self.pnm.name}: {self.vote_value}"
