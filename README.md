<h1 align="center">Inception</h1>

# Final grade 100/125

Mandatory part: 100/100 \
Bonus: 0/25

## About
Use docker-compose to create a LEMP stack (L for Linux, E for Nginx, M for Mariadb and P for PHP) with wordpress.

## Parts

 - A Docker container that contains NGINX with TLSv1.2 or TLSv1.3
 - A Docker container that contains WordPress + php-fpm
 - A Docker container that contains MariaDB
 - A volume that contains WordPress database
 - A second volume that contains WordPress website files
 - docker-networks between these containers

## Installation
1. Clone this repo
`git clone git@github.com:yaksaer/Inception.git`

2. `cd` into the directory and run `make` \
        `cd minishell` \
        `make`
## Usage
  `make down` to stop all containers \
  `make up` to run containers again \
  `make clean` to delete all conatainers's volumes \
  `make fclean` to delete all conatainers's volumes and remove all docker images \
  
## .env file
You can configure some values (database password, wordpress key etc.) by setting environment variables in .env file.
Default values have been already set.

## Project work scheme
<p align="center">

<img src="https://github.com/yaksaer/images-vault/blob/master/Screenshot%20from%202021-11-09%2019-43-17.png?raw=true" >
</p>
