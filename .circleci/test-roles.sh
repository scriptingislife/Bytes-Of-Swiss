#!/bin/bash

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)
FORCE_ALL=true
TEST_ROLE="none" # Name of role to test. Turn off FORCE_ALL.
FAIL=0

for D in roles/*/*
do
    ROLE_COMMIT=$(git log -1 --format=format:%H --full-diff $D)
    if [ $FORCE_ALL == true ] || [ $(basename $D) == "$TEST_ROLE" ] || [ "$ROLE_COMMIT" == "$LATEST_COMMIT" ]
        then
            echo "Testing $D..."
            cd $D

            # Only fail if converge or verify fail
            (molecule lint)
            (molecule syntax)
            molecule converge -s docker || FAIL=2
            (molecule idempotence -s docker)
            molecule verify -s docker || FAIL=2
            (molecule destroy -s docker)

            cd $PROJECT_DIR

            LINES="=========================================================================================================="
            echo -e "\n\n\n$LINES"
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done

echo $FAIL
exit $FAIL