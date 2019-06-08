#!/bin/bash

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)
FORCE=true # Test $TEST_ROLE role whether its changed or not
TEST_ROLE="mail" # Name of role to test
FAIL=0

for D in roles/*/*
do
    ROLE_COMMIT=$(git log -1 --format=format:%H --full-diff $D)
    if ([ $FORCE == true ] && [ $(basename $D) == "$TEST_ROLE" ]) || [ "$ROLE_COMMIT" == "$LATEST_COMMIT" ]
        then
            echo "Testing $D..."
            cd $D

            molecule lint || FAIL=2
            molecule syntax || FAIL=2
            molecule converge -s docker || FAIL=2
            molecule idempotence -s docker || FAIL=2
            molecule verify -s docker || FAIL=2
            molecule destroy -s docker || FAIL=2

            cd $PROJECT_DIR

            LINES="=========================================================================================================="
            echo -e "\n\n\n$LINES"
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done

echo $FAIL
exit $FAIL