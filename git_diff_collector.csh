#!/bin/csh -f
set dd=`date +"%d-%m-%Y"`
set dt=`date +"%H-%M_%d-%m-%Y"`
set user=`whoami`
mkdir /Users/${user}/Documents/Backup/$dd
git diff --binary > /Users/${user}/Documents/Backup/${dd}/${dt}.svo.unstaged.patch
git diff --cached --binary > /Users/${user}/Documents/Backup/${dd}/${dt}.svo.staged.patch
