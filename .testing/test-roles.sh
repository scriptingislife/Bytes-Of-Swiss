#!/bin/bash

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)
FORCE_ALL=false
TEST_ROLE="ssh" # Name of role to test. Turn off FORCE_ALL.
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

            if [ "$1" ]
                then
                    molecule converge -s "$1" || FAIL=2
                    (molecule idempotence -s "$1")
                    molecule verify -s "$1" || FAIL=2
                    (molecule destroy -s "$1")
                else
                    molecule --debug converge || FAIL=2
                    (molecule idempotence)
                    molecule verify || FAIL=2
                    (molecule destroy)
            fi

            

            cd $PROJECT_DIR

            LINES="=========================================================================================================="
            echo -e "\n\n\n$LINES"
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done

cat /tmp/molecule/ssh/default/vagrant-ubuntu1604.err

echo $FAIL
exit $FAIL