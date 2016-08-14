#!/bin/bash
export PYTHONIOENCODING=utf-8
export LANG=de_DE.UTF8
export LC_ALL=de_DE.UTF8
locale >> /usr/local/smarthome/var/log/locale.log

/usr/local/smarthome/bin/smarthome.py
while :; do
  sleep 300
done