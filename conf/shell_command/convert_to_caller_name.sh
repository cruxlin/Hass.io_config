#!/bin/bash
#grep -w $1,$2 /config/conf/shell_command/channel_list.csv | cut -d, -f3  | echo $(</dev/stdin) > /config/conf/shell_command/temp.txt
caller=$(grep $1 /config/conf/shell_command/caller_name.csv | cut -d, -f2)
echo $caller > /config/conf/shell_command/caller_name.txt
datastr='{"entity_id":"input_text.caller_name","value":"'"$caller"'"}'
echo $datastr >> /config/conf/shell_command/caller_name.txt
curl -X POST -H "x-ha-access: alyssa0917" -H "Content-Type: application/json" -d $datastr  https://regds.myds.me:8123/api/services/input_text/set_value

