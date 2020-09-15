#!/bin/sh

sed "s/coursesetup/$(basename ../paradigms)/g" ../_config.yml > ../_config.yml
sed "s/basic-setup/master/g" ../_config.yml > ../_config.yml
