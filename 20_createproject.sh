. ./config.sh
cd $projectroot_parent

/bin/bash -c "source $WORKON_HOME/$projectname/bin/activate && $WORKON_HOME/$projectname/bin/django-admin.py startproject  $projectname"
