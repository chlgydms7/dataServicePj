#!/bin/bash
if [ -s jhit.service.open.db.pid ]
then
	echo "jhit.service.open.db is running"
	exit
else
	nohup java -Xms512m -Xmx1024m -XX:+UseParallelGC -jar jhit.service.open.db.war 1> /dev/null 2>&1 &
	echo $! > /data/app/jhit.service.open.db/jhit.service.open.db.pid
fi
