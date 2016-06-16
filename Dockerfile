#
# This is the image for RaspberryPi on ARM architecture.
#
FROM hypriot/rpi-node
# FROM java:8 # For Intel/AMD

# Install maven
RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]

EXPOSE 8008
# CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]
CMD ["java", "-jar", "target\spark-basic-structure-1.0-SNAPSHOT-jar-with-dependencies.jar"]