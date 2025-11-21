# Use lightweight Nginx image
FROM nginx:stable-alpine

# Copy your built Parcel dist files into Nginx html folder
COPY ./dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
