#mvn clean package -Dmaven.test.skip=true -f pom.xml
#version=$(date +%Y%m%d%H%M)

docker build -f Dockerfile -t sunriver/ruoyi-cloud:modulesystem-1.0.0.0-test .
docker push sunriver/ruoyi-cloud:modulesystem-1.0.0.0-test

#docker run --name  msystem -d  sunriver/ruoyi-cloud:modulesystem-1.0.0.0-test
