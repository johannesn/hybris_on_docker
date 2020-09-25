#!/bin/sh
# wait-for-mysql.sh

set -e

host="$1"
user="$2"
password="$3"
database="$4"
shift
shift
shift
shift
cmd="$@"

until mysql -h "$host" -u$user -p$password -A -e ";" $database; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $cmd
