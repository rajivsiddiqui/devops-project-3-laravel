#!/usr/bin/env bash

# CD into the code directory
cd /var/www/larademo

# enter a maintainance mode
php artisan down

# get the latest code
git pull

# install the app's dependencies
composer install --no-dev

# migrate the database
php artisan migrate --force

# cache the app's config for speed boosting
php artisan config:cache

# if nedd to run any other commands for your application
# ex
# php artisan queue:work

# compile javascripts assets
npm run build

# exit the maintainance mode
php artisan up