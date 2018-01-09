#!/bin/sh
project_dir='october'
if [ -d "$project_dir" ]
then
    rm -r $project_dir
fi
mkdir $project_dir
php db.php
cd $project_dir
php -r "eval('?>'.file_get_contents('https://octobercms.com/api/installer'));"
cp -f ../OctoberInstall.php ./modules/system/console/
php artisan october:install
chmod -R 777 ../$project_dir 
