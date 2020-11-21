#!/bin/bash

set -x


function start()
{
    docker-compose up -d
    docker ps | grep -q unifi-controller
    sleep 10
    docker run \
    --network container:unifi-controller \
    appropriate/curl -v \
    --connect-timeout 5 --max-time 10 --retry 5 --retry-delay 0 --retry-max-time 60 -kILs --fail http://127.0.0.1:8080 || exit 1
    exit $?
}


function stop()
{
    docker-compose stop
}


function restart()
{
    docker-compose restart
}


function tail_log()
{
    docker-compose exec unifi-controller tail -F /config/logs/server.log
}



case "$1" in
        start)
            start
            ;;
         
        stop)
            stop
            ;;
         
        restart)
            restart
            ;;

        log)
            server_log
            ;;
    
        *)
            echo $"Usage: $0 {start|stop|restart|tail_log}"
            exit 1
 
esac
