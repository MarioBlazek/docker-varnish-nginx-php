# Simple Docker config for nginx, Varnish and PHP

[![Build Status](https://img.shields.io/travis/MarioBlazek/docker-varnish-nginx-php.svg?style=flat-square)](https://travis-ci.org/MarioBlazek/docker-varnish-nginx-php)

This is a simple Docker setup to play around PHP and Varnish.

To power up the Docker:

```bash
docker-compose up
```

If you do any changes on Docker file, don't forget to build up the changes:

```bash
docker-compose up --build
```

Entering Docker containers:
* PHP - `docker exec -it marek_php /bin/bash`
* nginx - `docker exec -it marek_nginx /bin/bash`
* Varnish - `docker exec -it marek_varnish /bin/bash`

Install Symfony:
* enter PHP container
* switch to `/workspace` directory
* remove the `php` directory
* execute `symfony new php --no-git` command
* navigate to `http://localhost:5001/` or `http://localhost:5002/` and you should see a Symfony welcome page
* enter Varnish container and clear cache if necessary `varnishadm ban req.http.host == localhost:5002`
