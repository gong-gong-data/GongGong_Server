FROM amd64/amazoncorretto:17

WORKDIR /app

COPY ./build/libs/gonggong_server-0.0.1-SNAPSHOT.jar /app/gonggong_server.jar

CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=dev", "/app/gonggong_server.jar"]
