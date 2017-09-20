#!/bin/bash

docker-compose stop

./clean.sh

#sudo tar -xvf ./storage/versions/vtigercrm7.0.1.tar.gz

./chmod.sh

docker-compose up -d $1

