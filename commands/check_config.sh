. setup.sh

function is_defined {
    var=$1
    echo $1
}

function is_in {
    var=$1
    list=$2

    declare -a argAry1=("${!2}")
    echo "${argAry1[@]}" 

    for element in $2
    do
        echo $element
    done
}

is_defined $DBENGINE
is_defined $WACKAPAPAP

myarray=('one' 'two' 'three')

is_in "hello" $myarray
