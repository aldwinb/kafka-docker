#!/bin/bash
docker run --rm \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(pwd):/usr/src/app \
-w /usr/src/app \
-e HOST_IP=$1 \
-e ZK=$2 \
--net kafkadocker_default \
-i -t wurstmeister/kafka /bin/bash
