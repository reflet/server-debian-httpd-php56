#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE docker;
    ALTER USER docker WITH PASSWORD 'dockerpassword';
    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
EOSQL
