FROM openjdk:8
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac SimpliHello.java
CMD ["java", "SimpliHello"]

