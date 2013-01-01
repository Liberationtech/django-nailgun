. ./config.sh

echo "
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2', 
        'NAME': '$dbname',
        'USER': '$dbuser', 
        'PASSWORD': '$dbpw', 
        'HOST': 'localhost', 
        'PORT': '',
     }
}" >> $local_settings_localhost

