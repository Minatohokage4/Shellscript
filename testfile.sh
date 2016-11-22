  GNU nano 2.2.6             File: testseach.sh

#!/bin/bash

echo "Enter keyword and path"
test $1

who

if who | grep $1

then
        echo "************** found keyword $1 *************"
else
        echo "============== Not found keyword ============"
fi

