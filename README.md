![logo](https://realhe.ro/img/logo.svg "Realhe.ro")

# Template for a Docker LAMP stack with multiple vhosts

Clone repo:

```bash
git clone https://github.com/fedek6/docker-lamp-stack-vhosts.git && cd docker-lamp-stack-vhosts
```

Modify config files:

* `docker-compose.yml` to name your container properly.
* `apache/100-custom.php.ini` for PHP settings.
* `apache/Dockerfile` for PHP extensions, server libraries and virtual host configs.
* `apache/example.com.conf` this is an example virtual host.
* `db/init/001-databases.sql` to initialize databases on build.

Run Docker:

```bash
docker-compose up
```

And you have:

* http://example.com:8000/ for the configured virtual host.
* http://example.com:8080/ for the PhpMyAdmin (use `root/toor` pair to log in).

And that's all!