#!/bin/bash
sleep 90
php artisan migrate --force
php artisan serve --host 0.0.0.0 --port $APP_ENDPOINT_PORT