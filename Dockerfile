FROM maven:3.6.3-openjdk-8-slim
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn package -DskipTests
CMD ["java", "-jar", "target/sample-0.0.1-SNAPSHOT.jar"]