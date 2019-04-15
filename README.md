# PHP OpenApi Annotations

## Install Composer Packages

```bash
$ docker-compose run --rm --no-deps \
--user $(id -u):$(id -g) \
composer
```

## Generate Swagger YAML

```bash
$ docker-compose run --rm --no-deps \
--user $(id -u):$(id -g) \
docs
```

## Run Swagger UI

```bash
$ docker-compose run -d \
--service-ports --name swaggerui \
swagger
```

## Running the php console

```bash
$ docker-compose -f ./docker/compose/commands.yml \
--project-directory $(pwd) \
run --rm --no-deps \
php
```

## License
[MIT](https://choosealicense.com/licenses/mit/)