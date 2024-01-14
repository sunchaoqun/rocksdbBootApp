FROM amazonlinux:2

RUN amazon-linux-extras install java-openjdk11 -y

WORKDIR /app

COPY target/rocksdbBootApp-0.0.1-SNAPSHOT.jar ./app.jar

RUN mkdir -p /efs

EXPOSE 8090

CMD ["java","-jar","/app/app.jar"]

# docker build -t rocksdb-boot-app . 