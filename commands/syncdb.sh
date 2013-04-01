. setup.sh
bash ./commands/drop_database.sh 
bash ./commands/create_database.sh 


run_management_command "syncdb --noinput";

run_management_command "migrate";

# run default migrations
#./manage.py migrate

#load up som 
# fixtures must be named to load, how about 
#./manage.py loaddata ncs/fixtures/superuser.json
#./manage.py loaddata ncs/fixtures/flatblocks.json
#./manage.py loaddata ncs/fixtures/flatpages.json
#./manage.py loaddata ncs/fixtures/projects.json
#./manage.py loaddata ncs/fixtures/method.json
#./manage.py loaddata ncs/fixtures/sites.json
#./manage.py loaddata ncs/fixtures/backgroundimages.json
