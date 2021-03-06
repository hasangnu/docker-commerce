# Drupal

```yalm
version: '3'

services:

  mariadb:
    image: hasangnu/mariadb
    container_name: hasangnu-mariadb
    environment:
      MYSQL_ROOT_PASSWORD: 'commerce'
      MYSQL_DATABASE: 'commerce'
      MYSQL_USER: 'commerce'
      MYSQL_PASSWORD: 'commerce'
    volumes:
      - ./mariadb-data/mysql:/var/lib/mysql

  drupal:
    image: hasangnu/php-commerce
    container_name: hasangnu-commerce
    ports:
      - 8880:80
    volumes:
      - ./drupal-data:/var/www/html
    restart: always

  adminer:
    image: hasangnu/adminer
    restart: always
    ports:
      - 8088:8080
```

```
docker-compose up -d
```
