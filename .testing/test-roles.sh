#!/bin/bash
#
# Usage: ./test-roles.sh <scenario>
#

PROJECT_DIR=$(pwd)
LATEST_COMMIT=$(git rev-parse HEAD)
FORCE_ALL=false  # Test all roles whether they've been changed or not.
TEST_ROLE="web-shell" # Name of role to test. Turn off FORCE_ALL.
RUN_TESTS=false  # Run full testing instead of just linting
FAIL=0 # Exit status

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

            if [ "$RUN_TESTS" ]
                then
                    if [ "$1" ] # Test given scenario or the default
                        then
                            molecule converge --debug -s "$1" || FAIL=2
                            (molecule idempotence -s "$1")
                            molecule verify -s "$1" || FAIL=2
                            (molecule destroy -s "$1")
                        else
                            molecule converge || FAIL=2
                            (molecule idempotence)
                            molecule verify || FAIL=2
                            (molecule destroy)
                    fi
            fi
            

            cd $PROJECT_DIR

            LINES="=========================================================================================================="
            echo -e "\n\n\n$LINES"
        else
            echo "Role $D not changed since last test. Skipping..."
    fi
done

echo $FAIL
exit $FAIL