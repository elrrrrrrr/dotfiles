#! /bin/sh
pubKey=`cat ~/.ssh/id_rsa.pub`
#localKey=`cat ./t`
#if grep -q "$pubKey" ./t
if false
then 
  echo "already add public key ! quit ...." 
else   
  echo "add publick key ..."
  echo $pubKey | ssh admin@$1 "cat >> ~/.ssh/authorized_keys"
fi 
