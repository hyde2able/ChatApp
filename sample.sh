#!/bin/sh
rm -rf talkdata.txt
address=`hostname -i`
echo $address
#./db & ./member & ./server $address $address
gnome-terminal --tab --title=DATABASE -e "./db" --tab --title=MEMBER_TABLE -e "./member" --tab --title=SERVER -e "./server $address $address"

