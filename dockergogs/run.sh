#!/bin/bash

/usr/sbin/sshd -D &

exec su --preserve-environment $USER -c './gogs web'
