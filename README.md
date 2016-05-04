# sandbox-docker

I got tired of spinning up VMs each time I needed to experiment in a Linux
environment. This is a quick way to get a Linux container up and running for
testing/experimental purposes.

The container uses supervisord to keep running.

## Usage

Clone this project and cd into the project folder. Then...

#### Build image

    docker-compose build

#### Start container

    docker-compose up

or

    docker-compose restart

#### Enter container

    docker exec -ti sandbox bash

#### Exit container

    exit

#### Access files from outside the container

Access files outside of the container by e.g. mounting a share or put stuff in
the `assets` folder, which is mapped to `/assets` in the container.

#### Stop container

    docker-compose stop
