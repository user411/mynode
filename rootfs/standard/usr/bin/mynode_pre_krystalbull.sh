#!/bin/bash

source /usr/share/mynode/mynode_config.sh
source /usr/share/mynode/mynode_app_versions.sh

set -x

cp -f /usr/share/mynode/krystalbull-docker-compose.yml /mnt/hdd/mynode/krystalbull/docker-compose.yml

cp -f /usr/share/mynode/krystalbull.env /mnt/hdd/mynode/krystalbull/.env
sed -i "s/VERSION=.*/VERSION=$KRYSTALBULL_VERSION/g" /mnt/hdd/mynode/krystalbull/.env
sed -i "s/UI_VERSION=.*/UI_VERSION=$KRYSTALBULL_UI_VERSION/g" /mnt/hdd/mynode/krystalbull/.env