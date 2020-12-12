# Preparing bower files (only have bower in dev dependencies)
FROM ubuntu

RUN mkdir /app
WORKDIR /app

COPY target/my-app-1.0-SNAPSHOT.jar /app/
#COPY jenkins/ /app/
#COPY src/ /app/
#RUN mvn clean package
#RUN mvn test
#RUN ./jenkins/scripts/deliver.sh

#COPY .bowerrc /app/
#COPY bower.json /app/
#RUN npm run bowerInstallDocker


#FROM node

#RUN apt-get update && apt-get upgrade -y \
#    && apt-get clean

#RUN mkdir /app
#WORKDIR /app

#COPY --from=0 /app/src/public/static/bower_components/ /app/src/public/static/bower_components/

#COPY package.json /app/
#RUN npm install
# --only=production

#COPY src /app/src

#EXPOSE 3000

CMD [ "echo", "JAR file succesfully deployed" ]

#RUN ls -lah /app/src/public/static/bower_components/
