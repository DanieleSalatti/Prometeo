#! /bin/bash
mkdir -p /media/usb-ssd-1/prometeo # creates a folder for your data
ID=$(id -u) # saves your user id in the ID variable
  
docker run -p 9090:9090 --restart=always --user $ID --volume "/media/usb-ssd-1/prometeo:/prometheus" --name prometheus-local -d prometheus/cluster-local