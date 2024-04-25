# docker-compose-wordpress

A simplified yet refined Docker Compose workflow that sets up a LEMP network of containers for local WordPress development.

## Usage

**TL'DR**: `docker-compose up -d --build nginx`

To get started, make sure you have [Docker installed](https://docs.docker.com/docker-for-mac/install/) on your system, and then clone this repository.

Next, navigate in your terminal to the directory you cloned this, and spin up the containers for the web server by running `docker-compose up -d --build nginx`.

After that completes, follow the steps from the [wordpress/README.md](wordpress/README.md) file to get your WordPress installation added in (or create a new blank one).

Bringing up the Docker Compose network with `nginx` instead of just using `up`, ensures that only our site's containers are brought up at the start, instead of all of the command containers as well. The following are built for our web server, with their exposed ports detailed:

- **nginx** - `:8080`
- **mysql** - `:3306`
- **php** - `:9000`

An additional container is included that lets you use the `wp-cli` app without having to install it on your local machine. Use the following command examples from your project root, modifying them to fit your particular use case.

- `docker-compose run --rm wp user list`

## Persistent MySQL Storage

By default, whenever you bring down the Docker network, your MySQL data will be removed after the containers are destroyed. If you would like to have persistent data that remains after bringing containers down and back up, do the following:

1. Create a `mysql` folder in the project root, alongside the `nginx` and `src` folders.
2. Under the mysql service in your `docker-compose.yml` file, add the following lines:

```yml
volumes:
  - ./mysql:/var/lib/mysql
```

## For Mac M1

Specify `--platform linux/amd64`

or add in the docker-compose file `platform: linux/amd64`

More Docker images for tags `arm64v8`: <https://hub.docker.com/u/arm64v8>

## Drawback

Still have to install WP manually - input configurations, .... App Local is better in setup all of them, just click and ready to use. No more setup.
