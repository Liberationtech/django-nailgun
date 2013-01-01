rfile=$(mktemp)
cat reqs.txt >> $rfile
cat reqs_dev.txt >> $rfile
pip install -r $rfile
rm -f $rfile
