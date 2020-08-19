FROM adoptopenjdk:11.0.8_10-jdk-hotspot-bionic

RUN mkdir /app
COPY ./build/libs/*.jar /app/app.jar

CMD ["java", \
     "-Xms256m", \
     "-Xmx256m", \
     "-XX:+UseG1GC", \
     "-jar", \
     "/app/app.jar"]
