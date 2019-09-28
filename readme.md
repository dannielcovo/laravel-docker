
## AUTHOR
Danniel Covo

## Docker 
    - Nginx
    - Mysql
    - Redis
    - PHP-FPM
## Docker Hub
https://hub.docker.com/r/dannielcovo/laravel/tags

## Apos a instalação do Docker Executar :
    - docker-compose up -d
    - docker exec -it app bash
    - execute composer install
    - crie o arquivo .env baseado no .env.example 
    - execute: php artisan key:generate 
    - execute: php artisan migrate
