#/bin/bash 

#mkdir -p tmp ; cd tmp/
header_name=$(aptitude search --disable-columns mempo | grep header | grep 3.2 | grep ".desk." | tail -n 1 |  awk  '{print $2}')
image_name=$(aptitude search --disable-columns mempo | grep image |  grep 3.2 | grep ".desk." | tail -n 1 |  awk  '{print $2}' )

aptitude download $header_name 
aptitude download $image_name 

hfullname=$(ls | grep $header_name) 
ifullname=$(ls | grep $image_name) 

url1='192.168.5.41/debian-multisig/'$hfullname.sig 
url2='192.168.5.41/debian-multisig/'$ifullname.sig

wget $url1 
wget $url2
