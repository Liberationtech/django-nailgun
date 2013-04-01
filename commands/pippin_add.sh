. setup.sh

pippin add $1 $VIRTUAL_ENV_REQUIREMENTS_FILE_FULL_PATH
/bin/bash -c "source $VIRTUALENV/bin/activate && pip install  -r  $VIRTUAL_ENV_REQUIREMENTS_FILE_FULL_PATH"
