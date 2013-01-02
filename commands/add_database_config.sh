. setup.sh

echo "
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2', 
        'NAME': '$DBNAME',
        'USER': '$DBUSER', 
        'PASSWORD': '$DBPASSWORD', 
        'HOST': 'localhost', 
        'PORT': '',
     }
}" >> $LOCAL_SETTINGS_LOCALHOST

