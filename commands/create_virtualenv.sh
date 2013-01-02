#create a new virtualenv
. setup.sh

virtualenv $WORKON_HOME/$PROJECTNAME --system-site-packages  -p python2.7

#at least populate it with django

/bin/bash -c "source $WORKON_HOME/$PROJECTNAME/bin/activate && pip install Django" 
