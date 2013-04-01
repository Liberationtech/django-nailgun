. setup.sh

cd $WORKSPACE

if [ $RCS == "hg" ]
then
    hg add .
    hg commit -m "initial import"
    hg push
fi


if [ $RCS == "git" ]
then
    git add .
    git commit -m "initial import"
    git push origin master
fi
