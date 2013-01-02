#append local SETTINGS import to SETTINGS.py
. setup.sh

#http://www.robgolding.com/blog/2010/05/03/extending-SETTINGS-variables-with-LOCAL_SETTINGS-py-in-django/
#Add local_settins import
echo $SETTINGS

echo "try:
    LOCAL_SETTINGS
except NameError:
    try:
        from local_settings import *
    except ImportError:
        pass" >> $SETTINGS

