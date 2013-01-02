#append local settings import to settings.py
. setup.sh

#http://www.robgolding.com/blog/2010/05/03/extending-settings-variables-with-local_settings-py-in-django/
#Add local_settins import

echo "try:
    LOCAL_SETTINGS
except NameError:
    try:
        from local_settings import *
    except ImportError:
        pass" >> $settings

#add a local_settings_hostname file
touch $local_settings_localhost

#add settings import to local_settings
echo "LOCAL_SETTINGS = True
from settings import *" >> $local_settings_localhost

#symlink local_settings.py
ln -s $local_settings_localhost $local_settings
