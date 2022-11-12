#!/bin/sh

mysql -u root < setup_db.sql
composer install
drush si demo_umami -y

echo "Your Drupal demo website is ready,"
echo "Open localhost:8000 in your browser."
