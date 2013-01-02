. setup.sh


echo "#!/bin/bash
set -e
LOGFILE=/var/log/gunicorn/$PROJECTNAME.log

cd $PROJECTMODULE
source $VIRTUALENV/bin/activate
test -d /var/log/gunicorn  || mkdir -p /var/log/gunicorn
exec $VIRTUALENV/bin/gunicorn_django -w 3  --bind 127.0.0.1:$GUNICORNPORT --user=$GUNICORNUSER --group=$GUNICORNGROUP --log-level=info  --log-file=/var/log/gunicorn/$PROJECTNAME.log 2>>/var/log/gunicorn/$PROJECTNAME.log" > $GUNICORNRUNNER
chmod 755 $GUNICORNRUNNER

