projectname=$1
git clone https://github.com/mike360/django-html5-boilerplate/
$VIRTUAL_ENV/bin/django-admin.py startproject $projectname --template=django-html5-boilerplate/

