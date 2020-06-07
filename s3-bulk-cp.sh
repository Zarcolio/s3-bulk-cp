#!/bin/bash

#aws s3 ls s3://$1|awk '{print $4}'>$1-s3-bulk-cp.tmp

set -e  
while read line  
do  
  aws s3 cp s3://$1/$line .  
done <$1-s3-bulk-cp.tmp
