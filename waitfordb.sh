#!/bin/bash

set -e

# There are some times database is not ready yet!
# We'll check if database is ready and we can connect to it
# then the rest of the code run as well.

echo "Waiting for database..."
while ! nc -z localhost 3306; do sleep 1; done
echo "Connected to database."
