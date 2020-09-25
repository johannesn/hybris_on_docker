#!/bin/sh
# wait-for-http.sh

set -e

until [ $1 = "--" ]; do
  url="$1"
  >&2 echo "Trying to reach $1"
  until curl -sSf --insecure $url > /dev/null; do
    >&2 echo "HTTP is unavailable - sleeping"
    sleep 1
  done
  >&2 echo "$1 is available."
  shift
done

shift
cmd="$@"

>&2 echo "HTTP is up - executing command"
exec $cmd
