REM runs django tests and flake8
docker-compose run --rm app sh -c "python manage.py test && flake8"
