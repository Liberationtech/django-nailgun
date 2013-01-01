#create the mysql database to hold our stuff
db=$1
pw=$2
user=$db
echo $db $user $pw
tmpfile=$(mktemp /tmp/sql.XXX)

echo "" > $tmpfile
echo "CREATE DATABASE $db CHARACTER SET utf8;" >> $tmpfile
echo "CREATE USER '$user'@'localhost' IDENTIFIED BY '$pw';" >> $tmpfile
echo "GRANT ALL PRIVILEGES ON $db.* TO '$user'@'localhost' WITH GRANT OPTION;" >> $tmpfile



settingstmp=$(mktemp /tmp/settings.XXX)
echo "DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {
            'read_default_file': '/path/to/my.cnf',
        },
    }
}" > $settingstmp

dbcnf=$(mktemp /tmp/config.XXX)
echo "[client]
database = $db
user = $user
password = $pw
default-character-set = utf8" > $dbcnf

echo "----------------------------------------"

echo "now as root (or someone with the power to create dbs)"
echo "mysql < $tmpfile"

echo "insert $settingstmp to your projects settings.py file"
echo "and copy $dbcnf to the location you specify"
