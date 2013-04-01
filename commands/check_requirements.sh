. setup.sh

function is_installed {
  package=$1
  dpkg -s $package >/dev/null 2>&1
  #echo $?
  if [ $? -ne 0 ]; then
     echo ""
     echo "#package $package not installed consider running"
     echo "apt-get install $package"
     echo ""
  fi
  #echo $package
}

for package in $LINUXPACKAGES
do
    is_installed $package
done
