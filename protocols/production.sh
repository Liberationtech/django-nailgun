# the basic protocol for setting up a new project on 
# the developer machine

./commands/check_requirements.sh

./commands/create_virtualenv.sh

#./commands/create_project.sh

./commands/clone_existing_repository.sh

./commands/configure_local_settings.py

./commands/create_database.sh

./commands/add_database_config.sh

./commands/add_nginx_vhost_config.sh

./commands/add_gunicornrunner.sh

./commands/add_upstart_script.sh
