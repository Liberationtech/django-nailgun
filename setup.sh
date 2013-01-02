. $NAILGUNSETTINGS

#XXX TODO this should all be escaped so that they could be overridden from $NAILGUNSETTINGS
PROJECTMODULE=$WORKSPACE/$PROJECTNAME
SETTINGS=$PROJECTMODULE/settings.py
LOCAL_SETTINGS_LOCALHOST=$PROJECTMODULE/local_settings_$(hostname).py
LOCAL_SETTINGS=$PROJECTMODULE/local_settings.py

NON_DJANGO_CONFIG=$WORKSPACE/non_django_config
VIRTUALENV=$WORKON_HOME/$PROJECTNAME
NGINX_CONFIG="$NON_DJANGO_CONFIG/nginx_$PROJECTNAME.conf"

GUNICORNRUNNER=$NON_DJANGO_CONFIG/gunicornrunner_$PROJECTNAME.sh

UPSTARTSCRIPT=$NON_DJANGO_CONFIG/initscript_$PROJECTNAME.conf

if [ "$LINUXPACKAGES" == "" ]; then
   LINUXPACKAGES="nginx python virtualenvwrapper python-psycopg2 postgresql mercurial git" 
fi
