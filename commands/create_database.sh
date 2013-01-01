. ./config.sh
cd $WORKSPACE

function runsql {
    export PGPASSWORD=$POSTGRES_ROOT_PASSWORD && psql -U postgres -d template1 -c "$1"
} 

runsql "CREATE USER $DBUSER WITH PASSWORD '$DBPASSWORD';"
runsql "CREATE DATABASE $DBNAME;"
runsql "GRANT ALL PRIVILEGES ON DATABASE $DBNAME to $DBUSER;"

