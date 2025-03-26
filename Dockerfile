# Use the latest Nginx image as the base
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy all website files from the project directory
COPY . .

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
