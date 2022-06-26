#!/bin/bash

if [ ! -f "wp-config.php" ]; then

	wp config create --dbname=$WP_DB_NAME \
		--dbuser=$WP_DB_USER \
		--dbpass=$WP_DB_PASS \
		--dbhost=$WP_DB_HOST \
		--skip-check --allow-root

	wp core install --title="MANUUUUUL" \
		--url=$WP_URL \
		--admin_user=$WP_ADMIN \
		--admin_password=$WP_ADMIN_PASSWORD \
		--admin_email=$WP_ADMIN_EMAIL \
		--allow-root

	wp user create $WP_USER $WP_USER_EMAIL \
		--user_pass=$WP_USER_PWD \
		--allow-root
fi
php-fpm7.3 -F -R
