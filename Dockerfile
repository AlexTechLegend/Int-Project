# Use the Nginx base image
FROM nginx:latest

# Copy your index.html file to the appropriate location in the container
COPY edits/index.html /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80
