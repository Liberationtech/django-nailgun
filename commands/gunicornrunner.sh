#!/bin/bash
#start the gunicorn process
project=$1
virtualenv=$2
port=$3
set -e
LOGFILE=/var/log/gunicorn/$project.log
LOGDIR=$(dirname $LOGFILE)
NUM_WORKERS=3
# user/group to run as
USER=oivvio
GROUP=oivvio
PROJECTMODULE=/home/$user/$project


cd  $PROJECTMODULE 
source /home/oivvio/.virtualenvs/$virtualenv/bin/activate
test -d $LOGDIR || mkdir -p $LOGDIR
exec /home/oivvio/.virtualenvs/$virtualenv/bin/gunicorn_django --bind=127.0.0.1:$port -w $NUM_WORKERS  --user=$USER --group=$GROUP --log-level=debug  --log-file=$LOGFILE 2>>$LOGFILE
