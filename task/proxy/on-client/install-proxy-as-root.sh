ip_base=192.168.5

envfile=/etc/environment 
echo "Using ip_base=$ip_base and appending to end of $envfile (is there were old settings for proxy there, you might wish to clean it up later)"

http_proxy=http://$ip_base.8:3128 >> $envfile
https_proxy=http://$ip_base.8:3128 >> $envfile
no_proxy=localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,*.l,*.local,*.office,*.private,*.priv,*.lan >> $envfile
