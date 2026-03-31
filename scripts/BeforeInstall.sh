#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 791990038441.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 791990038441.dkr.ecr.ap-northeast-1.amazonaws.com/practice-ecr-repo | wc -l`  = 1 ]
then
        docker rmi practice-ecr-repo
        docker pull 791990038441.dkr.ecr.ap-northeast-1.amazonaws.com/practice-ecr-repo:latest
else
        docker pull 791990038441.dkr.ecr.ap-northeast-1.amazonaws.com/practice-ecr-repo:latest
fi
