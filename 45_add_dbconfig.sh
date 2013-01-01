. ./config.sh

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
}" >> $local_settings_localhost

