# Use the Nginx image from Docker Hub, specifying the arm64 version
FROM --platform=linux/arm64 nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the static content from your project into the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside once the container has launched
EXPOSE 80

# Start Nginx and ensure it stays running
CMD ["nginx", "-g", "daemon off;"]