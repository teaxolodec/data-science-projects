#!/bin/bash

cd /tmp
# Нужен пароль от рута
echo 'ЗКЕЩ123' | sudo -S -u postgres psql -d zabbix -t -A -F"|" -c "SELECT h.name, i.key_, i.itemid, i.templateid,to_timestamp(hh.clock) AT TIME ZONE 'UTC', hh.value, hh.ns FROM zabbix.hosts as h INNER JOIN zabbix.items as i on i.hostid = h.hostid INNER JOIN zabbix.history as hh on hh.itemid = i.itemid WHERE h.status = 0 AND h.flags = 0 ORDER BY hh.clock" > all.csv
sed -i '1iname|key|itemid|templateid|clock|value|ns' all.csv
mv all.csv $HOME
cd $HOME
echo ''
