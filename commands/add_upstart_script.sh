. setup.sh

echo "description \"$PROJECTNAME site\"
start on runlevel [2345]
stop on runlevel [06]
respawn
respawn limit 10 5
exec $GUNICORNRUNNER" > $UPSTARTSCRIPT

sudo rm -f /etc/init/$PROJECTNAME.conf
sudo ln -s $UPSTARTSCRIPT  /etc/init/$PROJECTNAME.conf

sudo initctl reload-configuration
