#!/bin/bash

# expr is used to tell bash that this is an expression.  You can use expr to do math.  You can also use the $(( )) syntax to do math.  The $(( )) syntax is preferred because it is more readable.
# * isnt multiplication, it is a wildcard.  You have to use the x for multiplication. or escape the character like \*

expr 5 + 4
echo $(( 5 + 4 ))
mynum1=5
$(( mynum1 + 4 )) #you can do math functions to variables.
