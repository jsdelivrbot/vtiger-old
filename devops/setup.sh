#!/bin/bash

DB_HOST=$(php devops/utils.php env VT_DB_HOST localhost)
DB_PORT=$(php devops/utils.php env VT_DB_PORT 3306)
DB_NAME=$(php devops/utils.php env VT_DB_NAME vtigercrm)
DB_USERNAME=$(php devops/utils.php env VT_DB_USERNAME root)
DB_PASSWORD=$(php devops/utils.php env VT_DB_PASSWORD root)

echo $DB_PORT

exit

mysql \
    -h"$DB_HOST" \
    -P"$DB_PORT" \
    -u"$DB_USERNAME" \
    -p"$DB_PASSWORD" \
    $DB_NAME < devops/mysql/dumps/vtigercrm.sql

echo "vtiger setup complete."
