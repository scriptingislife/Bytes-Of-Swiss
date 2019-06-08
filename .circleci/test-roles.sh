#!/bin/bash

LINES="=========================================================================================================="
PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)

for D in roles/*/*
do
    ROLE_COMMIT=$(git log -1 --format=format:%H --full-diff $D)
    if [ $ROLE_COMMIT = $LATEST_COMMIT ]
        then
            echo "Testing $D..."
            cd $D

            molecule test -s docker || exit 0

            cd $PROJECT_DIR
            echo "\n\n\n$LINES"
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done