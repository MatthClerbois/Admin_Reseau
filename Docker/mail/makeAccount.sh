#!/bin/bash

[ $# != 2 ] && (echo "Wrong usage, see : ./create_user.sh <USER> <PASS>"; exit)

mkdir -p config
touch config/postfix-accounts.cf

USER=$1
PASS=$2

docker run --rm \
  -e MAIL_USER="${USER}@wt5mc.ephec-ti.be" \
  -e MAIL_PASS="${PASS}" \
  -ti tvial/docker-mailserver:v2 \
  /bin/sh -c 'echo "$MAIL_USER|$(doveadm pw -s CRAM-MD5 -u $MAIL_USER -p $MAIL_PASS)"' >> config/postfix-accounts.cf
