#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER ninewealth_web WITH PASSWORD 'password' CREATEDB;
    CREATE DATABASE ninewealth_web_dev;
    GRANT ALL PRIVILEGES ON DATABASE ninewealth_web_dev TO ninewealth_web;
EOSQL
