. setup.sh

if [ $DBENGINE == "sqlite3" ]
then
fi


if [ $DBENGINE == "pgsql" ]
then
fi

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

