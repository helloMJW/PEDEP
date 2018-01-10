#!/bin/sh
php db.php
project_name='webed'
composer create-project --prefer-dist sgsoft-studio/webed $project_name
cp -f ./.env ./$project_name/
cp -f ./InstallCmsCommand.php ./$project_name/vendor/sgsoft-studio/base/src/Console/Commands/
cd $project_name
php artisan key:generate
php artisan cms:install
