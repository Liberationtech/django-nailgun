##
# dump your django project database into a timestamped backupfolder
# run like so
# ./backupdb.sh myvirtenv /home/myuser/myproject /home/myuser/mybackupdir
# make sure the virtualenv, project and backupdir exist
virtualenv=$1
projectroot=$2
backuproot=$3
/bin/bash -c  "source /home/oivvio/.virtualenvs/$virtualenv/bin/activate && $projectroot/manage.py dumpdata" |bzip2 -c >  $backuproot/$(date +"%Y%m%d_%H%M").json.bz2
