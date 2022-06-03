#!/bin/bash

sudo chown -R 8983:8983 solr_home

docker-compose build
docker-compose up
