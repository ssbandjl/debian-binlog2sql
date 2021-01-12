#!/bin/bash

IMAGE='harbor.cloudminds.com/library/debian-binlog2sql:1.0'

docker build -t $IMAGE .
docker push $IMAGE