#mvn clean package -Dmaven.test.skip=true -f pom.xml
#version=$(date +%Y%m%d%H%M)

docker build -f Dockerfile -t sunriver/ruoyi-cloud:auth-1.0.0.0-test .
docker push sunriver/ruoyi-cloud:auth-1.0.0.0-test