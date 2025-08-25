# Use official Nginx image (serves static files very efficiently)
FROM nginx:stable-alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files into nginx html dir
# (make sure index.html, pierre.png, CV-PY-Fabrissin-FR.pdf, etc. are in ./public/)
COPY ./public /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground (Docker best practice)
CMD ["nginx", "-g", "daemon off;"]
