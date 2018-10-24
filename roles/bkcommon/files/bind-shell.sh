#!/bin/bash
port=1337; if [ $# -eq 1 ]; then port=$1; fi; while true; do nc -lp $port; wait; done
