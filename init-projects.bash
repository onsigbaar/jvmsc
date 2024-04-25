#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=3.0.4 \
--type=gradle-project \
--java-version=17 \
--packaging=jar \
--name=application-service \
--package-name=sc.app.microservices.core.application \
--groupId=sc.app.microservices.core.application \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
application-service

cd ..