#!/bin/bash

docker build -t mymssql . && docker run -p 1433:1433 --name mymssql -d mymssql
