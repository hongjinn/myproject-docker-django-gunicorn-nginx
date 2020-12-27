#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn --bind 0.0.0.0:8000 --chdir /myproject/myapp myapp.wsgi:application
