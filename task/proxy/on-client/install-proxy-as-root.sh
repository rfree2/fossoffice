ip_base=192.168.5
echo "Using ip_base=$ip_base"

http_proxy=http://$ip_base.8:3128
https_proxy=http://$ip_base.8:3128
no_proxy=localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,*.l,*.local,*.office,*.private,*.priv,*.lan

