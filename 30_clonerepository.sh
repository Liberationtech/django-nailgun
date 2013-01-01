. ./config.sh
cd $projectroot_parent

t="_tmp"
tmp=$projectname$t
echo $tmp
mv $projectname $tmp


if [ $rcs == "hg" ]
then
    cd $projectroot_parent
    hg clone $rcs_repos
    cp -rv $tmp/* $projectroot
    rm -fr $tmp

    cd $projectroot
    hg add .
    hg commit -m "initial import"
    hg push
fi


if [ $rcs == "git" ]
then
    echo "git"
fi
