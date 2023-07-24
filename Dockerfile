# Use the official Golang image as the base image
FROM golang:1.17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application code into the container
COPY . .

# Install any dependencies your application might have
RUN go mod download

# Build the Go application
RUN go build -o go-api

# Expose the port that your application listens on
ENV PORT 8080
EXPOSE 8080

# Set any required environment variables (you mentioned FLY_REGION in your code)
#ENV FLY_REGION <YOUR_FLY_REGION>

ENV PORT ":8080"

# Command to run your application
CMD ["./go-api"]
