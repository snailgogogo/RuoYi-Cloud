# Docker image for springboot file run
# VERSION 0.0.1
# Author: leon
# 基础镜像使用java,https://hub.docker.com/r/mayan31370/openjdk-alpine-with-chinese-timezone/tags?page=1&ordering=last_updated
# openjre8
FROM mayan31370/openjdk-alpine-with-chinese-timezone:8-jdk
# 作者
MAINTAINER leon <lu_0047@163.com>
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为app.jar

COPY target/*.jar app.jar
COPY src/main/resources/bootstrap.yml bootstrap.yml

RUN ls -al

#RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
#    echo 'Asia/Shanghai' >/etc/timezone

ENV PATH=$PATH:$JAVA_HOME/bin
ENV LANG="zh_CN.UTF-8"

RUN echo "export LC_ALL=zh_CN.UTF-8"  >>  /etc/profile

RUN sh -c 'touch /app.jar'
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9000","-jar","/app.jar","--spring.config.location=/bootstrap.yml"]