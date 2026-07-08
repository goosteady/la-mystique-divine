FROM nginx:alpine
COPY . /usr/share/nginx/html/
RUN rm -f /usr/share/nginx/html/Dockerfile
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD sed -i "s/\$PORT/$PORT/g" /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
