#!/bin/sh
rm -rf talkdata.txt
address=`hostname -i`
echo $address

#./db & ./member & ./server $address $address
gnome-terminal --tab --title=DATABASE -e "./db" --tab --title=MEMBER_TABLE -e "sleep 1 & ./member" --tab --title=SERVER -e "sleep 2 & ./server $address $address"

