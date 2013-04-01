django-nailgun
==============

A set up bash scripts to set up a new django project quickly.  Setting up a new django project involves a lot of repetitive tasks. `django-nailgun` tries to make to take the drudge out of the process.



USAGE
=====

Set up a repository.

Clone it to whereever you want to have your working copy

Start by writing a nailgunsettingsfile , feel free to use the template provided




In bash/zsh

    $ cd /home/oivvio/coderepositories/django-nailgun
    $ export NAILGUNSETTINGS=/full/path/to/your/settings.sh

start running your commands

    $ bash ./commands/check_requirements.sh
   
 
run your protocol

commands
--------

short bash scripts that do a single thing like setup a database.


protocols
---------

runs a sequence of commands to creat and setup a new project


TODO
====


check that all required variables are in place and quit if it does not

check that we have access to repository

Set root password of postgresql



