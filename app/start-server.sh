#!/bin/sh

#check server files
check(){
    if [ ! -d '/app/samp03/samp03svr' ]; then
        echo 'INSTALL SERVER'
        tar -zxvf /app/samp*.tar.gz
    fi
}

#init
init(){
    if [ ! -n ${RCON_PASSWORD}} ]; then
        sed -i "s/rcon_password changeme/rcon_password ${RCON_PASSWORD}/g" /app/samp03/server.cfg
    fi
}

#start server
check()
init()
echo 'START SA-MP SERVER'
cd /app/samp03
exec ./samp03svr