mvn clean compile package -DskipTests && \
docker-compose down && \
docker build -t personal/spring-config-service . && \
docker image prune -f && \
docker-compose up -d && \
docker logs -f spring-config-service