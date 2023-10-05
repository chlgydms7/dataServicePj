#!/bin/bash
if [ -s jhit.service.open.db.pid ]
then
	kill -TERM $(cat /data/app/jhit.service.open.db/jhit.service.open.db.pid)
	rm -f /data/app/jhit.service.open.db/jhit.service.open.db.pid
else
	echo "jhit.service.open.db is not running"
	exit
fi
