#!/bin/bash
# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/game
# export PATH
devicePath="/opt/app/push/"
localFiles=$(git status | sed -n "s/修改：     //p");
for localFile in $localFiles
do
echo "adb -host push $localFile $devicePath$localFile";
done