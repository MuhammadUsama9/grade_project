FROM gradle:8.8-jdk17 AS builder
WORKDIR /app
COPY build.gradle settings.gradle ./
COPY src ./src
RUN gradle build -x test
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/build/libs/hello-gradle-1.0.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
