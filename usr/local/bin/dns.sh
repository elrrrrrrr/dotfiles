#! /bin/sh
ssid=`ioreg -l -n AirPortDriver | grep IO80211SSID | sed 's/^.*= "\(.*\)".*$/\1/; s/ /_/g'`
currentDNS=$(networksetup -getdnsservers Wi-Fi)

GOOGLE="8.8.8.8 8.8.4.4"
COMPANY="*******"

if [ $ssid = $COMPANY ];then 
  echo "set defalut dncs to normal"
else
  if [[ "$currentDNS" == *"$GOOGLE"* ]];then
    echo 'currentDNS is GOOGLE!'
  else
  echo "set dns to 8.8.8.8 & 8.8.4.4 (google)"
  sudo networksetup -setdnsservers Wi-Fi $GOOGLE
  fi
fi
