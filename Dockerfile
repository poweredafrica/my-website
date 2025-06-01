FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

# Use our custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 7860

CMD ["nginx", "-g", "daemon off;"]