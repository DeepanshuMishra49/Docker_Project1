<<<<<<< HEAD
=======
#———stage1 - jar builder ————-

# Maven image

FROM maven:3.8.3-openjdk-17 AS builder 

# Set working directory

WORKDIR /app

# Copy source code from local to container

COPY . /app

# Build application and skip test cases

#EXPOSE 8080

RUN mvn clean install -DskipTests=true

#ENTRYPOINT ["java", "-jar", "/expenseapp.jar"]

#--------------------------------------
# Stage 2 - app build
#--------------------------------------

# Import small size java image

>>>>>>> 6142d11 (added dockerfile and docker-compose.yml)
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app 

COPY src/Main.java /app/Main.java

RUN javac Main.java 

CMD ["java", "Main"]

