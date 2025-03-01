# Use the official Apache HTTPD base image
FROM httpd:latest
RUN rm -rf /usr/share/httpd/html/*

# Copy your website files to the Apache document root
# Replace 'your-website' with the actual path to your website files
COPY  spering-html . /user/share/httpd/html/

# Expose the default HTTP port
EXPOSE 80
CMD ["httpd", "-g", "daemon off;"]

