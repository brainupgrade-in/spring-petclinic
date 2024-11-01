FROM eclipse-temurin:17-jre-jammy as production
EXPOSE 8080
COPY target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]
