. ./config.sh
cd $WORKSPACE

/bin/bash -c "source $WORKON_HOME/$PROJECTNAME/bin/activate && $WORKON_HOME/$PROJECTNAME/bin/django-admin.py startproject  $PROJECTNAME"
