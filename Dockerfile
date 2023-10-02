FROM maven:3.6.3-openjdk-8
COPY . /app
WORKDIR /app
RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/sample-0.0.1-SNAPSHOT.jar"]