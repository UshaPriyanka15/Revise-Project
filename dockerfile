# Use the official Apache HTTPD base image
FROM httpd:latest

# Copy your website files to the Apache document root
# Replace 'your-website' with the actual path to your website files
COPY  spering-html .

# Expose the default HTTP port
EXPOSE 80
