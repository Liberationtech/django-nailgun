. $NAILGUNSETTINGS

#XXX TODO this should all be escaped so that they could be overridden from $NAILGUNSETTINGS
PROJECTMODULE=$WORKSPACE/$PROJECTNAME
settings=$PROJECTMODULE/$PROJECTNAME/settings.py
local_settings_localhost=$PROJECTMODULE/$PROJECTNAME/local_settings_$(hostname).py
local_settings=$PROJECTMODULE/$PROJECTNAME/local_settings.py


if [ "$LINUXPACKAGES" == "" ]; then
   LINUXPACKAGES="nginx python virtualenvwrapper python-psycopg2 postgresql mercurial git" 
fi
