. setup.sh

cd $WORKSPACE
#/bin/bash -c "source $WORKON_HOME/$PROJECTNAME/bin/activate && $WORKON_HOME/$PROJECTNAME/bin/django-admin.py startproject  $PROJECTNAME"
/bin/bash -c "source $WORKON_HOME/$PROJECTNAME/bin/activate && $WORKON_HOME/$PROJECTNAME/bin/django-admin.py startproject  $PROJECTNAME"

#django-admin.py startproject will not create a projectfolder if that folder already exists, so we have to let django put it one level down
# and the move all the stuff in it one level up

tmpdir=$(mktemp -d)
mv $PROJECTNAME $tmpdir
mv $tmpdir/$PROJECTNAME/* $WORKSPACE
rm -fr $tmpdir

