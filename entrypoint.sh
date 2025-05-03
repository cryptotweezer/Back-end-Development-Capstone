#!/bin/sh

# Make migrations and migrate the database.
echo "Making migrations and migrating the database. "
python manage.py makemigrations --noinput
python manage.py migrate --noinput

# Desactivado para evitar error de solo lectura en SQLite
# DJANGO_SUPERUSER_USERNAME=admin \
# DJANGO_SUPERUSER_PASSWORD=admin \
# DJANGO_SUPERUSER_EMAIL="admin@admin.com" \
# python manage.py createsuperuser --noinput

exec "$@"
