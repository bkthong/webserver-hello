# podman build --build-arg=VERSION=XX  -t webserver-hello:XX
FROM --platform=linux/amd64  registry.access.redhat.com/ubi9/ubi-minimal:latest

ARG VERSION="1.3"

#Declare we will use port 8080 on the container
EXPOSE 8080


# Install apache webserver and utilities & clear dnf cache
RUN microdnf -y install httpd bind-utils procps-ng iputils iproute && \
    microdnf clean all

# Update the application to use port 8080 instead of 80
RUN sed -i 's/^Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf

#Add our source code
ADD src/ /var/www/html
#Add a index.html that containers the VERSION arg value
RUN echo "Simple hello world ( ${VERSION} ) " > /var/www/html/index.html

# The program to start when a container is instantiated from this image
CMD [ "httpd" , "-D" , "FOREGROUND" ] 
    

