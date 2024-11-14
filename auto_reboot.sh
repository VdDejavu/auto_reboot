 #!/bin/bash

TIMESTAMP=`date +%s`
if [[ "$(ping -c 10 8.8.8.8 | grep '100% packet loss')" == 100 ]]; then
   echo "DOWN `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
   /sbin/reboot
  exit 1
else
  echo "ONLINE   `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
  exit 0
fi
