# Build image

```
docker-compose build
```

## Start a new project

Change `app` for the name of your project

```
docker-compose run nuxt yarn create nuxt-app app
```

## Run project

Create and customize env file

```
cp .env.example .env
```

Run docker compose

```
docker-compose up
```

Open your browser with the next url http://127.0.0.1:3000
