FROM openjdk:21-jdk-slim
COPY target/demo-1.0.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
