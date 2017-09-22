#!/bin/bash

cd $(dirname $0)/..

sudo chmod 777 tabdata.php
sudo chmod 777 config.inc.php
sudo chmod 777 parent_tabdata.php
sudo chmod 777 modules
sudo chmod 777 -R cache
sudo chmod 777 -R storage
sudo chmod 777 -R modules/Settings
sudo chmod 777 -R layouts/vlayout/modules
sudo chmod 777 -R layouts/v7/modules
sudo chmod 777 -R user_privileges
sudo chmod 777 -R cron/modules
sudo chmod 777 -R test
sudo chmod 777 -R logs
sudo chmod 777 -R languages
sudo chmod +x cron/vtigercron.sh