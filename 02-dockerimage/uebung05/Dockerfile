# Use the latest Alpine image
FROM alpine:latest

LABEL Author="Mattia Scruzzi"

# Update the package index and install Python 3.12 and pip
RUN apk update \
 && apk add --no-cache python3 py3-pip

# Set the working directory
WORKDIR /app

CMD ["python3"]