#!/bin/bash

nginx -g "daemon off;" &
suricata -c /etc/suricata/suricata.yaml -i eth0 &
wait
