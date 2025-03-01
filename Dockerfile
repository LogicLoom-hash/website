FROM ubuntu 

# Update and install Apache
RUN apt update && apt install apache2 -y

# Copy website files to the Apache document root
ADD ./var/www/html/ /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

