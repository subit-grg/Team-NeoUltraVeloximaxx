FROM maven:latest
WORKDIR /build
COPY . /build
RUN mvn clean package

FROM eclipse-temurin:11
WORKDIR /ops/petclinic
COPY --from=0 /build/target/spring-petclinic-rest-2.6.2.jar app.jar
EXPOSE 9966
ENTRYPOINT java -jar app.jar
