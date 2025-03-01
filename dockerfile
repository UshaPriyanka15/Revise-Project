# Use the official Apache HTTPD base image
FROM httpd:latest
RUN rm -rf /etc/httpd/conf/httpd.conf* 

# Copy your website files to the Apache document root
# Replace 'your-website' with the actual path to your website files
COPY  spering-html . /etc/httpd/conf/httpd.conf

# Expose the default HTTP port
EXPOSE 80
CMD ["httpd", "-g", "daemon off;"]

