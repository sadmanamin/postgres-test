#!bin/bash

flask db migrate
flask db upgrade
flask run --port=5000