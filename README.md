# Featured Repositories

### Ruby on Rails
This application requires:
* ruby 3.0.3

### Database
This application uses Postgresql 12.1 with ActiveRecord

## Docker Deploy
You need followings:
- Docker installed

Learn more about [Docker Setup](https://docs.docker.com/desktop/)


Build and Up Docker container.

```console
docker-compose build
docker-compose up
```

Open another console and run this to initialize database.

```console
cd featured-repositories
docker exec -it featured_repositories_web rails db:create db:migrate
```

Open in browser.

- [`http://localhost:3000/`](http://localhost:3000/)

To stop, in the console where `docker-compose` is running, hit `Ctrl + C` and wait.

```console
Gracefully stopping... (press Ctrl+C again to force)
Stopping featured_repositories_web   ... done
Stopping featured_repositories_db    ... done
```

## Deploy local through RVM and Ruby
```
rvm install 3.0.3
```
Learn more about [RVM](https://rvm.io/rvm/install) installation

### Install dependencies
Using [Bundler](https://github.com/bundler/bundler)
```
gem install bundler
bundle
```

### Set environment variables
Using [dotenv](https://github.com/bkeepers/dotenv)


When running without the docker environment, modify the .env file, passing your database parameters.
```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_HOST=database
```

### Task for initial development setup

```
rails db:create
rails db:migrate
```

### Start rails server
```
rails s -b 0.0.0.0 -p 3000
```