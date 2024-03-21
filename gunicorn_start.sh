#!/bin/bash

NAME=fastapi-app
DIR=./
WORKERS=3
WORKER_CLASS=uvicorn.workers.UvicornWorker
BIND=unix:$DIR/run/gunicorn.sock
LOG_LEVEL=error 


exec gunicorn src.app:app \
    --name $NAME \
    --workers $WORKERS \
    --worker-class $WORKER_CLASS \
    --bind=$BIND \
    --log-level=$LOG_LEVEL 