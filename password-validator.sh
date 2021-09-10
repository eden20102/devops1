#!/usr/bin/env bash

password=$1
tep="-f"
error='\e[31m';
successful='\e[32m';
if [[ "$password" == "$tep" ]];then
    file=$2

password=$(cat $file)
echo "$password"
fi
####################################################################################################
if [ ${#password} -lt 10 ];then
    echo -e $error "\t \n '$password' Password value must be at least 10 characters long"
else
    echo "good"
fi       
###########################################################################################
echo $password | grep "[0-9]"| grep "[a-z]" | grep "[A-Z]"
if [[ $? -ne 0 ]];then
echo "The password must contain letters and numbers"
    exit 1;

else
echo -e $successful"The test passed the password correctly"
exit 0;
fi
#############################################################################################
