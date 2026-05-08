# Sitio estático OBIT — nginx
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY app /usr/share/nginx/html/app
COPY public /usr/share/nginx/html/public

EXPOSE 80
