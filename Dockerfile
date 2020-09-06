FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

RUN echo 'Simple hello world (1.1)' > /var/www/html/index.html

