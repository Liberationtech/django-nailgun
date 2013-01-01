#create a new virtualenv
. ./config.sh
virtualenv $WORKON_HOME/$projectname --system-site-packages  -p python2.7

#at least populate it with django

/bin/bash -c "source $WORKON_HOME/$projectname/bin/activate && pip install Django" 
