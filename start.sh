#!/usr/bin/env sh

mkdir -p /code
cd /code
ln -s /json /code/json

# Start the application
export FLASK_APP=app.py
export FLASK_DEBUG=True
export
flask run --host=0.0.0.0 --port=3000
