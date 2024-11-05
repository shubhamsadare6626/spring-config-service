FROM azul/zulu-openjdk-alpine:17-jre-headless-latest
RUN apk add --no-cache tzdata
ENV TZ Asia/Kuala_Lumpur
VOLUME /tmp

COPY target/spring-config-service-0.0.1.jar app.jar
ENTRYPOINT exec java -server -Xmx256m -Xss1024k -Djava.security.egd=file:/dev/./urandom -jar /app.jar