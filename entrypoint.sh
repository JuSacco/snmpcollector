#!/bin/sh
set -e

exec supervisord --nodaemon --configuration /etc/supervisord.conf &

sleep 2

exec supervisorctl tail -f snmpcollector 

#tail -f /dev/null