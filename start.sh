#!/usr/bin/env sh

# Script to pull the latest of the web_server into the container on start
mkdir -p /github
cd /github
git clone https://github.com/wessenstam/apac-lookup

ln -s /json /github/apac-lookup/json
cd /github/apac-lookup
# Start the application
export FLASK_APP=app.py
export FLASK_DEBUG=True
export
flask run --host=0.0.0.0 --port=3000
