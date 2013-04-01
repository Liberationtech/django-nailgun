. setup.sh
cd $WORKSPACE

function runsql {
    cmd="export PGPASSWORD=$POSTGRES_ROOT_PASSWORD && psql -U postgres -d template1 -c '$1'"
    echo $cmd
} 

runsql "DROP DATABASE $DBNAME;"

