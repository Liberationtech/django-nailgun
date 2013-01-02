django-nailgun
==============

A set up bash scripts to set up a new django project quickly.  Setting up a new django project involves a lot of repetitive tasks. `django-nailgun` tries to make to take the drudge out of the process.

commands
--------

short bash scripts that do a single thing like setup a database.


protocols
---------

runs a sequence of commands to creata and setup a new project


TODO
====


Set up nginx vhost

Set up nginx regular host

setup the gunicorn runner

setup upstart job for this gunicorn runner.
symlink to it from /etc/init
then, as root, `initctl reload-configuration`

check that we have access to repository

Set root password of postgresql



