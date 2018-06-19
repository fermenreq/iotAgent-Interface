#!/bin/bash

# Author: Fernando Méndez Requena <fernando.mendez@atos.net>

# Install virtualenv and django
pip install virtualenv
pip install -r requirements.txt

# Run Orion and Centos
echo docker='cd ../' 
sudo docker-compose up -d

python manage.py makemigrations
python manage.py migrate

# Run Server
python manage.py runserver

