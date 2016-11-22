
#!/bin/bash
set `date`
if      test $1 = Fri
then
        echo "Thank goodness it is Fly Friday!"
elif test $1 = Sat || test $1 = Sun
then
        echo "You should not be here working."
        echo "Log off and go home."
else
        echo "It is not be the weekend."
        echo "Get to work!"
fi

