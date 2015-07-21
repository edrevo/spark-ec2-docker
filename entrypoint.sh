#!/bin/sh
mkdir ~/.ssh
cp /id_rsa ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa
python2 spark_ec2.py -i ~/.ssh/id_rsa $@
