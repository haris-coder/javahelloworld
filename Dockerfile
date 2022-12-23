FROM java:8

COPY src /home/superuser/javahelloworld/src

WORKDIR /home/superuser/javahelloworld

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

