FROM openjdk:8

ENV APP_JAR_NAME="DeveloperCRUD-1.0-RELEASED-jar-with-dependencies.jar"
ENV JAVA_ORTS="-Xms512m -Xmx512m"

COPY target/$APP_JAR_NAME $APP_JAR_NAME

EXPOSE 8080

ENTRYPOINT exec java $JAVA_ORTS -jar $APP_JAR_NAME