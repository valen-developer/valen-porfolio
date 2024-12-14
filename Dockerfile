FROM nginx:alpine


RUN rm -rf /usr/share/nginx/html/*
COPY /nginx/default.conf /etc/nginx/conf.d/default.conf

COPY  /dist /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]