# podman build --build-arg=VERSION=XX  -t webserver-hello:XX

FROM --platform=linux/amd64  docker.io/centos:7


ARG VERSION="1.1"

#Declare we will use port 8080 on the container
EXPOSE 8080


# Install apache webserver and utilities & clear yum cache
RUN yum -y install httpd bind-utils procps-ng iputils iproute && \
    yum clean all

# Update the application to use port 8080 instead of 80
RUN sed -i 's/^Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf

#Add our source code
#ADD src/ /var/www/html
RUN echo "Simple hello world ( ${VERSION} ) " > /var/www/html/index.html

# The program to start when a container is instantiated from this image
CMD [ "httpd" , "-D" , "FOREGROUND" ] 
    

