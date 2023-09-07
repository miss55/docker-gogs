# docker gogs

## Why

1. Translate Docker-related commands into simple Make commands for convenient maintenance

## Usage

> Quickly start a Git Gogs instance using Docker, utilizing the official Docker image for easy and fast deployment, stopping, and monitoring of the Gogs Docker container

1. quick run
    - `make start`
    - default ssh port `SP=10022`
    - default http port `HP=10880`
    - eg `make start SP=10023 HP=80`
1. check docker run command
    - `make test`
    - default ssh port `SP=10022`
    - default http port `HP=10880`
    - eg `make test SP=10023 HP=80`
1. stop
    - `make stop`

1. status
    - `make status`
