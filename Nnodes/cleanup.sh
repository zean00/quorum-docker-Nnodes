#!/bin/bash
docker-compose down
rm -rf qdata_[0-9] qdata_[0-9][0-9]
rm -f docker-compose.yml
rm -f contract_pri.js contract_pub.js

# Shouldn't be needed, but just in case:
rm -f static-nodes.json genesis.json
#docker stop $(docker ps -q -f name=nnodes_node)
#docker rm $(docker ps -aq -f name=nnodes_node)