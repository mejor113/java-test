FROM maven:3.6.3-jdk-11
COPY . /app
WORKDIR /app
RUN mvn clean package
CMD ["java", "-jar", "target/sample-0.0.1-SNAPSHOT.jar"]