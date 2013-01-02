. setup.sh

cd $WORKSPACE

t="_tmp"
tmp=$PROJECTNAME$t
echo $tmp
mv $PROJECTNAME $tmp


if [ $RCS == "hg" ]
then
    cd $WORKSPACE
    hg clone $RCS_REPOSITORY_URL $PROJECTNAME
    cp -rv $tmp/* $PROJECTMODULE
    rm -fr $tmp

    cd $PROJECTMODULE
    hg add .
    hg commit -m "initial import"
    hg push
fi


if [ $RCS == "git" ]
then
    echo "git"
fi
