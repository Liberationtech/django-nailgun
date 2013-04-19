function is_defined {
    if [ -z "$2" ]; then
        echo "$1 is not defined"
        exit
    fi
}

is_defined "NAILGUNSETTINGS" $NAILGUNSETTINGS
. $NAILGUNSETTINGS

is_defined "PROJECTNAME" $PROJECTNAME
is_defined "DBENGINE" $DBENGINE
is_defined "WORKSPACE" $WORKSPACE
is_defined "PROJECTMODULE" $PROJECTMODULE
is_defined "RCS" $RCS
is_defined "RCS_REPOSITORY_URL" $RCS_REPOSITORY_URL
is_defined "VIRTUAL_ENV_REQUIREMENTS_FILE" $VIRTUAL_ENV_REQUIREMENTS_FILE


#XXX TODO this should all be escaped so that they could be overridden from $NAILGUNSETTINGS
ABOVE_WORKSPACE=$(dirname $WORKSPACE)
PROJECTMODULE=$WORKSPACE/$PROJECTNAME
SETTINGS=$PROJECTMODULE/settings.py
LOCAL_SETTINGS_LOCALHOST=$PROJECTMODULE/local_settings_$(hostname).py
LOCAL_SETTINGS=$PROJECTMODULE/local_settings.py

NON_DJANGO_CONFIG=$WORKSPACE/non_django_config
VIRTUALENV=$WORKON_HOME/$PROJECTNAME
NGINX_CONFIG="$NON_DJANGO_CONFIG/nginx_$PROJECTNAME.conf"

GUNICORNRUNNER=$NON_DJANGO_CONFIG/gunicornrunner_$PROJECTNAME.sh

UPSTARTSCRIPT=$NON_DJANGO_CONFIG/initscript_$PROJECTNAME.conf

VIRTUAL_ENV_REQUIREMENTS_FILE_FULL_PATH=$NON_DJANGO_CONFIG/$VIRTUAL_ENV_REQUIREMENTS_FILE

if [ "$LINUXPACKAGES" == "" ]; then
   LINUXPACKAGES="nginx python virtualenvwrapper python-psycopg2 postgresql mercurial git" 
fi

function run_management_command () {
    cmd="source $WORKON_HOME/$PROJECTNAME/bin/activate && $WORKSPACE/manage.py $@";
    echo $cmd
    eval $cmd
}

