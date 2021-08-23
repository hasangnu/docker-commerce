#!/bin/bash
set -e

if [ ! -e '/var/www/html/index.php' ]; then
	tar cf - --one-file-system -C /opt/drupal . | tar xf -
        chown -R www-data:www-data /var/www/html
fi

exec "$@"
