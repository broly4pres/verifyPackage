#!/bin/bash

if [ $# -lt 1 ]
then
    echo """
            You forgot an argument!
            Example: ./verifyPackage.sh <package_name>
            ./verify.sh ansible
        """
else
    yum list $1 &> /dev/null
    if [ $? -eq 0 ]; then
        echo "YES, $1 INSTALLED!"
    else
        echo "NOPE!, $1 NOT INSTALLED!"
    fi
fi
