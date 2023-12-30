# portfolio

![Symfony Badge](https://img.shields.io/badge/symfony-7.0.1-blue.svg?logo=symfony&logoColor=fff&style=flat)
![Nginx Badge](https://img.shields.io/badge/nginx_alpine-1.25-green.svg?logo=nginx&logoColor=fff&style=flat)
![PHP Badge](https://img.shields.io/badge/php-8.3-yellow.svg?logo=php&logoColor=fff&style=flat)
![MySQL Badge](https://img.shields.io/badge/mysql-latest-purple.svg?logo=mysql&logoColor=fff&style=flat)
![Adminer Badge](https://img.shields.io/badge/adminer-4.8.1-orange.svg?logo=adminer&logoColor=fff&style=flat)
![Vue.js Badge](https://img.shields.io/badge/vue-3.3.4-brightgreen.svg?logo=vue.js&logoColor=fff&style=flat)
![Vuetify Badge](https://img.shields.io/badge/vuetify-3.3.23-pink.svg?logo=vuetify&logoColor=fff&style=flat)



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
