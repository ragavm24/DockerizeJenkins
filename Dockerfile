# Preparing bower files (only have bower in dev dependencies)
FROM ubuntu

RUN mkdir /app
WORKDIR /app

COPY target/my-app-1.0-SNAPSHOT.jar /app/

CMD [ "echo", "JAR file succesfully deployed" ]
