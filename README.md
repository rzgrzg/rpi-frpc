# rpi-frpc
frpc(frp client) dockerfile for rpi 

usage:  
docker build -t rzgrzg/frpc https://github.com/rzgrzg/rpi-frpc.git  

docker run --name frpc --restart=always \  
-v ~/frp/frpc.ini:/var/frp/conf/frpc.ini \  
-d rzgrzg/frpc

then put frpc.ini to ~/frp/conf
