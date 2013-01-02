#create a new virtualenv
. setup.sh

#TODO this should be more generic
if [ $(virtualenv --version) == "1.4.9" ]; then 
    virtualenv $WORKON_HOME/$PROJECTNAME -p python2.7
else 
    virtualenv $WORKON_HOME/$PROJECTNAME --system-site-packages  -p python2.7
fi 

#at least populate it with django

/bin/bash -c "source $WORKON_HOME/$PROJECTNAME/bin/activate && pip install Django" 
