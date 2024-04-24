# Use Alpine Linux as the base image
FROM alpine:latest

# Install OpenJDK 11 and Maven
RUN apk add --no-cache openjdk11 maven

# Set environment variables for Java and Maven
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $JAVA_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Copy the application source code to the container
COPY . /app

# Define default command to run when the container starts
CMD ["mvn", "clean", "install"]
