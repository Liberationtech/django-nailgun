. ./config.sh
cd $projectroot_parent

function runsql {
    export PGPASSWORD=$postgres_root_pw && psql -U postgres -d template1 -c "$1"
} 

runsql "CREATE USER $dbuser WITH PASSWORD '$dbpw';"
runsql "CREATE DATABASE $dbname;"
runsql "GRANT ALL PRIVILEGES ON DATABASE $dbname to $dbuser;"

