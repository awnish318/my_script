# !/bin/bash

# script for showing the stats of the system

echo "May i know your name please"
read name
echo
sleep 3
echo "hello $name great to meet you"
echo
sleep 2
echo "Below are the details of server"
echo
echo "current date"
date | awk '{print "today is" $3 "of" $2; "Day is: " $1; "Time is: "$4 }'
echo
echo "disk space available"
df -H | awk 'NR==2 {print "Total disk size:" $2 "Used:" $3 "free" $4}'
echo
echo "uptime"
uptime
echo
echo "last 3 logins detail"
last | head -3
echo "curently connected"
w



#here NR==2 prints the second line of the output of  command.

