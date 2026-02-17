#!/bin/bash

# This script runs the server using Gunicorn and Uvicorn workers
# Usage: ./run_prod.sh

source .venv/bin/activate
exec gunicorn -w 1 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:8000
