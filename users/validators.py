# users/validators.py
import re
from django.core.exceptions import ValidationError

def validate_username(value):
    #regex compile to match the pattern: "XXX00000"
    pattern = re.compile(r'^[A-Za-z]{3}\d{5}$')
    if not pattern.match(value):
        raise ValidationError(
            'Username must be in the format "ABC12345", where the first three characters are letters and the last five are digits.'
        )
