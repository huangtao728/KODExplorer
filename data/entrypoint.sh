#!/bin/bash

echo "password: $PASSWORD"

sed -i "s/$password = 'POIUYTREWQWERTYUIOP';/$password = '$PASSWORD';/" /data/http/controller/util.php

exec "$@"