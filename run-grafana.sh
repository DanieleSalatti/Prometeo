#! /bin/bash
mkdir -p /media/usb-ssd-1/grafana # creates a folder for your data
ID=$(id -u) # saves your user id in the ID variable

# starts grafana with your user id and using the data folder
docker run -d --user $ID --volume "/media/usb-ssd-1/grafana:/var/lib/grafana" -p 3000:3000 grafana/grafana