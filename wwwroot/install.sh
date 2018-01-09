#!/bin/sh
php db.php
project_name='lavalite'
composer create-project LavaLite/cms --prefer-dist $project_name
cd $project_name
cp -f ../ConfigureDatabase.php ./vendor/lavalite/framework/src/Litepie/Install/Installers/Scripts
cp -f ../PackgeAssets.php ./vendor/lavalite/framework/src/Litepie/Install/Installers/Scripts
cp -f ../SetSuperuserUser.php ./vendor/lavalite/framework/src/Litepie/Install/Installers/Scripts
php artisan lavalite:install
