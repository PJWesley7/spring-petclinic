FROM openjdk:slim-buster
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
EXPOSE 8080
WORKDIR /./spring-petclinic
CMD ./mvnw spring-boot:run

