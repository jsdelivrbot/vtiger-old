#!/bin/bash

USER=root
PASS=b016f48d898c745be5ef382254224582

docker-compose exec mysql \
    bash -c "mysqldump -u$USER -p$PASS vtigercrm > /dumps/vtigercrm.sql"
