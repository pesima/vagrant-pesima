#!/usr/bin/env bash

echo ">>> Installing PHP MSSQL"

# Test if PHP is installed
php -v > /dev/null 2>&1
[[ ! $? ]] && { echo "!!! PHP is not installed.\n\tInstalling PHP MSSQL aborted!"; exit 1; }

sudo apt-get update

# Install PHP MSSQL
sudo apt-get install -y php5-mssql

echo ">>> Installing freeTDS for MSSQL"

# Install freetds
sudo apt-get install -y freetds-dev freetds-bin tdsodbc

echo ">>> Installing UnixODBC for MSSQL"

# Install unixodbc
sudo apt-get install -y unixodbc unixodbc-dev

# Restart php5-fpm
sudo service php5-fpm restart