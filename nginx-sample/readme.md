- docker-compose up --build
  - docker-compose up nginx

- docker-compose run --rm composer create-project laravel/laravel .
- docker-compose run --rm composer dump-autoload

- docker-compose run --rm npm install
- docker-compose run --rm npm run dev

- docker-compose run --rm artisan migrate
  - docker-compose run --rm --entrypoint="php artisan migrate" php
