#!/bin/bash
docker run -p 80:5000 --name flask-web -d 791990038441.dkr.ecr.ap-northeast-1.amazonaws.com/practice-ecr-repo:latest

sleep 20s