#run a django script - fg from cron 
# cronscript.sh some_scripts_in_the_projects_scripts_folder myvirtenv /home/myuser/project
scriptname=$1
virtualenv=$2
PROJECTMODULE=$3

home="/home/oivvio"
activate="/home/oivvio/.virtualenvs/$virtualenv/bin/activate"

/bin/bash -c "source $activate && cd $PROJECTMODULE && ./manage.py runscript $scriptname"
