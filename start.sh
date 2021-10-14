docker network create coollabs-dev
docker build -t nodejs-example-haproxy -f nodejs/Dockerfile nodejs

docker stop -t 0 nodejs-example-haproxy
docker run --rm -d --name nodejs-example-haproxy --network coollabs-dev nodejs-example-haproxy

docker run --rm -ti -p 80:80 -p 443:443 -p 8404:8404 -p 5555:5555 --network coollabs-dev --add-host='host.docker.internal:host-gateway' -v /home/ab/devel/coolLabs/haproxy:/usr/local/etc/haproxy -w /usr/local/etc/haproxy haproxytech/haproxy-ubuntu:2.4 bash
