#!/bin/sh

new_name=$(basename $(pwd))
sed -i "s/coursesetup/$new_name/g" ./_config.yml
sed -i "s/basic-setup/master/g" ./_config.yml
