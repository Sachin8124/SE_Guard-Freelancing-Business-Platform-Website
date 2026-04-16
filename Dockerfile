FROM nginx:alpine

RUN sed -i 's/listen\s*80;/listen 3000;/g; s/listen\s*\[::\]:80;/listen [::]:3000;/g' \
    /etc/nginx/conf.d/default.conf

COPY Project/frontend/ /usr/share/nginx/html/

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
