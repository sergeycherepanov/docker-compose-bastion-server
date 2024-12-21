#!/bin/bash
set -eu
cd $(dirname $0)
PROJECT_NAME=$(basename $(realpath $(dirname $0)))

docker ps -a --format '{{.Names}}' | grep "^${PROJECT_NAME}" | xargs --no-run-if-empty -I{} docker rm -f {}
docker volume ls --format '{{.Name}}' | grep "^${PROJECT_NAME}" | xargs --no-run-if-empty -I{} docker volume rm -f {}

ls -a | grep -v '^..$' | grep -v '^.$' | grep -v ".git\|.gitignore\|README.md\|docker-compose.override.yml\|getting-started-with-zitadel.sh\|$(basename $0)" | xargs --no-run-if-empty rm -rf