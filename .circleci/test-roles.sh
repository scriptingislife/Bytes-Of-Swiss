#!/bin/bash

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)

for D in roles/*/*
do
    ROLE_COMMIT=$(git log -1 --format=format:%H --full-diff $D)
    if [ $ROLE_COMMIT = $LATEST_COMMIT ]
        then
            echo "Testing $D..."
            cd $D

            molecule lint || exit 0
            molecule syntax || exit 0
            molecule converge -s docker
            molecule idempotence -s docker || exit 0
            molecule verify -s docker || exit 0
            molecule destroy -s docker

            cd $PROJECT_DIR
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done