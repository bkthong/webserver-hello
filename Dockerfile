FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

RUN mkdir /var/www/html/servicea && \
    mkdir /var/www/html/serviceb && \
    echo 'Simple hello world (1.2)' > /var/www/html/index.html && \
    echo 'This is servicea' > /var/www/html/servicea/index.html && \
    echo 'This is serviceb' > /var/www/html/serviceb/index.html 
    

