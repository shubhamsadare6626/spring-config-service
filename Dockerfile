FROM openjdk:17-jdk-alpine
RUN apk add --no-cache tzdata
ENV TZ Asia/Kolkata
VOLUME /tmp

COPY target/spring-config-service-0.0.1.jar app.jar
ENTRYPOINT exec java -server -Xmx256m -Xss1024k -Djava.security.egd=file:/dev/./urandom -jar /app.jar
