#!/bin/bash

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)

for D in roles/misc/* roles/service/* roles/vuln/*
do
    ROLE_COMMIT=$(git log -1 --format=format:%H --full-diff $D)
    if [ $ROLE_COMMIT = $LATEST_COMMIT]
        then
            echo "Testing $D..."
            cd $D

            molecule lint || exit 0

            cd $PROJECT_DIR
        else
            echo "Role $D changed since last test. Skipping..."
    fi
done