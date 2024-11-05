# Wordpress with Caddy Server

Quickly deploy `WordPress`, `MariaDB` with a `Caddy` server, `Redis` using `Docker`.

## Getting Started

To get your WordPress installation running follow these simple steps.

## Prerequisites

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)

## How to

### Install

Clone the repo

```sh
git clone https://github.com/ThinhPhan/wordpress-caddy-mariadb-redis
cd wordpress-caddy-mariadb-redis
cp .env-sample .env
```

Modify passwords and variables inside ```.env``` file as you wish

Run shell command

```sh
./install.sh
```

Login domain and setup

#### Uninstall

Run shell command

```sh
./uninstall.sh
```

## Changelogs

* 05.11.2024 - First draft.
