 #!/bin/bash

TIMESTAMP=`date +%s`
if [[ "$(ping -c 60 8.8.8.8 | grep '100% packet loss' )" != "" ]]; then
   echo "DOWN `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
   /sbin/reboot
  exit 1
elif [[ "$(ping -c 5 -q 8.8.8.8 | grep -oP '\d+(?=% packet loss)')" != "" ]]; then
   echo "OFFLINE `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
   /sbin/reboot
  exit 1
else
  echo "ONLINE   `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
  exit 0
fi
