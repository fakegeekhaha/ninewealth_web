#!/usr/bin/env bash

until cd src
do
    echo "Waiting for django volume..."
done

until python manage.py migrate --settings=ninewealth_web.settings.dev_docker
do
    echo "Waiting for postgres ready..."
    sleep 2
done

python manage.py loaddata fixtures.json --settings=ninewealth_web.settings.dev_docker
python manage.py runserver 0.0.0.0:8000 --settings=ninewealth_web.settings.dev_docker
