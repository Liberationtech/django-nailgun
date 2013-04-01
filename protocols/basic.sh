# the basic protocol for setting up a new project on 
# the developer machine

./commands/check_requirements.sh

./commands/create_virtualenv.sh

#make sure you have your repository set up somewhere

./commands/clone_repository.sh


./commands/create_project.sh

./commands/initial_import_to_repository.sh

./commands/configure_settings.py

./commands/configure_local_settings.py

./commands/create_database.sh

./commands/add_database_config.sh

./commands/add_non_django_config_folder.sh

./commands/pip_freeze.sh 

#Now you might want to pippin_add.sh some packages

##TODO 
# chmod 755 manage.py
# add cd to virtualenv activate
