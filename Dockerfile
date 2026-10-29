FROM nginx:alpine

LABEL version="v1.0.0" maintainer="Jayanth"

WORKDIR /usr/share/nginx/html

RUN sed -i 's/80;/8081;/g' /etc/nginx/conf.d/default.conf

COPY ./index.html /usr/share/nginx/html/

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
