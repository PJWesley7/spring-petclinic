FROM openjdk:slim-buster
RUN apt-get update && apt-get install git -y && mkdir first_volume
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic  && cp -R . /./first_volume/
VOLUME /./first_volume 
EXPOSE 8080
WORKDIR /./first_volume
CMD ./mvnw spring-boot:run

