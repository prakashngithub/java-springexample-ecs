FROM prodaptimages/maven339java8
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN ls
RUN mvn clean install 
ENTRYPOINT ["java","-jar","target/app1-1.0.war"]
