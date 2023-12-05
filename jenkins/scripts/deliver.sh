#!/bin/bash

mvn jar:jar install:install help:evaluate -Dexpression=project.name
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`


echo $NAME
echo $VERSION
java -jar target/${NAME}-${VERSION}.jar
#java -jar target/my-app-1.0-SNAPSHOT.jar
