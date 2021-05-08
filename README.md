# yamdb_final
yamdb_final

![YaMDB-final workflow](https://github.com/DmitriyReztsov/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

# API YamDB

API for social network for movie reviews.
Project performs re-building of containers after push to master branch on GitHub.
Redoc: http://84.252.139.110/redoc/


## Tech

- Python
- Django
- Django Rest Framework
- API
- SimpleJWT
- Gunicorn
- NGINX
- Docker
- DockerHub
- GitHub Actions


## Installation

Execute on server:
```sh
docker-compose up -d
docker-compose exec web python manage.py migrate --noinput
docker-compose exec web python manage.py createsuperuser
docker-compose exec web python manage.py collectstatic --no-input
docker-compose exec web python manage.py dumpdata > fixtures.json
```
Do push to master to re-run app.


## Author

Dmitriy Reztsov
