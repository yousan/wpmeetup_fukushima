#!/usr/bin/env bash
set -xe
cd -- "$(dirname "$BASH_SOURCE")"

chmod 0600 ./id_rsa

rsync -avr -e "ssh -i ./id_rsa" \
 --exclude=bin  --exclude=log --exclude=tmp --exclude=.idea --exclude=.git\
  ../ fwmu@fwmu.sakura.ne.jp:/home/fwmu/www/wp/wp-content/themes/wpmeetup_fukushima
