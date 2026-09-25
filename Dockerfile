FROM chainguard/jdk:latest
USER root
# nonroot=65532
RUN mkdir /app && chown 65532:65532 /app
USER 65532
COPY target/LDHExport-1.0.jar /app/java-application.jar
COPY target/lib /app/lib
WORKDIR /app
CMD ["java", "-jar", "java-application.jar"]
