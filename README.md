# AWS CLI Docker Container

# AWS CLI Version

* 1.16.7

# Description

Docker container with the AWS CLI installed.

Using [Alpine linux](https://hub.docker.com/_/alpine/).

You can run any commands available to the AWS CLI.

## Example Usage

Run a command in a task using ECS EC2

    docker-compose run --rm command ec2-task cluser-name-here task-name-here container-name-here "php artisan migrate"

Run a command in a task using ECS Fargate. Requires the `FARGATE_SUBNET` and `FARGATE_SECURITY_GROUP` environment variables, check out the docker-compose override example file.

    docker-compose run --rm command fargate-task cluster-name-here task-name-here container-name-here "php artisan migrate"

Check task status

    docker-compose run --rm aws ecs describe-tasks --cluster cluster-name-here --tasks task-id-here

Tail logs with `saw`:

    docker-compose run --rm saw watch production