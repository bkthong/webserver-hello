FROM registry.access.redhat.com/ubi10/ubi:latest

# Declare the container uses port 80
EXPOSE 80

# Install apache webserver and utilities & clear dnf cache
RUN dnf -y install httpd bind-utils procps-ng iputils iproute && \
    dnf clean all

# Add our source code src/about.html
# COPY could also be used
ADD src/ /var/www/html

#Add a index.html 
RUN echo "Simple hello world" > /var/www/html/index.html

# The program to start when a container is instantiated from this image
# ENTRYPOINT could also be used
CMD [ "httpd" , "-D" , "FOREGROUND" ] 
    

