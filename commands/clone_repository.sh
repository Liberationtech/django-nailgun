. setup.sh

cd $ABOVE_WORKSPACE

if [ $RCS == "hg" ]
then
    hg clone $RCS_REPOSITORY_URL $PROJECTNAME
fi


if [ $RCS == "git" ]
then
    git clone $RCS_REPOSITORY_URL $PROJECTNAME
    
fi
