#!/bin/bash
#grep -w $1,$2 /config/conf/shell_command/channel_list.csv | cut -d, -f3  | echo $(</dev/stdin) > /config/conf/shell_command/temp.txt
chno=$(grep -w $1,$2 /config/conf/shell_command/channel_list.csv | cut -d, -f3)
echo $chno
datastr='{"entity_id":"input_number.channel_no","value":"'"$chno"'"}'
#echo $datastr
curl -X POST -H "x-ha-access: alyssa0917" -H "Content-Type: application/json" -d $datastr  https://regds.myds.me:8123/api/services/input_number/set_value

