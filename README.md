# AWS CLI Docker Container

# AWS CLI Version

* 1.11.131

# Description

Docker container with the AWS CLI installed.

Using [Alpine linux](https://hub.docker.com/_/alpine/).  The Docker image is 87MB

You can run any commands available to the AWS CLI.

## Example Usage

### Run commands with ECS tasks

    docker-compose run --rm command ecs-run-task cluser-name-here task-name-here container-here "php artisan migrate"

    docker-compose run --rm aws ecs describe-tasks --cluster cluster-name-here --tasks task-id-here