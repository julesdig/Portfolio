# portfolio

![Static Badge](https://img.shields.io/badge/symfony-6.3.1-red.svg?logo=symfony&logoColor=fff&style=flat)
![Static Badge](https://img.shields.io/badge/nginx_alpine-1.25-blue.svg?logo=nginx&logoColor=fff&style=flat)
![Static Badge](https://img.shields.io/badge/php-8.2.8-red.svg?logo=php&logoColor=fff&style=flat)
![Static Badge](https://img.shields.io/badge/mysql-latest-blue.svg?logo=mysql&logoColor=fff&style=flat)
![Static Badge](https://img.shields.io/badge/adminer-4.8.1-blue.svg?logo=adminer&logoColor=fff&style=flat)

## Docker Set up

1. Install Docker on your local machine:

| OS      | Tutorial URL                                    |
| ------- | ----------------------------------------------- |
| LinuxOS | https://docs.docker.com/engine/install/ubuntu/  |
| MacOS   | https://www.docker.com/products/docker-desktop/ |

2.  Launch the following command to pull image and install container

```
docker compose up --build -d
```

### Project Set Up

1. To enter into the php container, type in your terminal

```
docker exec -it portfolio_project_php sh
```

2. Make install

```
composer install
```

3. if we have donc view the web site, in the php container

```
npm run install
```

### TIPS

You can execute command without enter into container. For example `composer install` could be launched outside the container with the following command

```
docker exec -it portfolio_project_php composer install
```

## Unit & Functional tests

![Static Badge](https://img.shields.io/badge/php_unit-9.6.9-blue)

### PHP Unit

To make test with PHP Unit, please check online documentation here: https://docs.phpunit.de/en/9.6/

Once, you made your first unit test, check this one on your local before commit your changes.

```
docker exec -it portfolio_project_php bin/phpunit tests/unit
```

You can complete with the path of your choice and run only the test you want to test by adding an argument to the command line

```
--filter="nameOfYourTest"
```

### Panther

To make test with Panther, please check the online documentation here: https://github.com/symfony/panther

Once, you made your first functional test, check this one on your local before commit your changes.

```
docker exec -it portfolio_project_php bin/phpunit tests/functional/
```

You can complete with the path of your choice

## Coding Standard

![Static Badge](https://img.shields.io/badge/phpCS-red)
![Static Badge](https://img.shields.io/badge/phpMD-red)
![Static Badge](https://img.shields.io/badge/phpStan-red)

### How to use these ?

All of code analyser, need to be launched through a terminal.
Go to your container bash

```
docker exec -it portfolio_project_php sh
```

And then launch one of analyser :

| Code Analyser | Linux CMD                       |
| ------------- | ------------------------------- |
| PHP CS        | `bin/phpcs src/`                |
| PHP MD        | `bin/phpmd src/ text phpmd.xml` |
| PHP STAN      | `bin/phpstan analyse src/`      |
