. setup.sh
#Drop the database, this relies on .pgpass for root being set up right
sudo psql -U postgres -d template1 -c "DROP DATABASE $DBNAME;"
