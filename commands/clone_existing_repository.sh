. setup.sh

above_workspace=$(dirname $WORKSPACE)
cd $above_workspace 

#exit

if [ $RCS == "hg" ]
then
    hg clone $RCS_REPOSITORY_URL $PROJECTNAME
fi


if [ $RCS == "git" ]
then
    echo "git"
fi
