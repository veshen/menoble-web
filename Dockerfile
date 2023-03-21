FROM nginx:1.15

COPY ./build/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

ENTRYPOINT ["nginx","-g","daemon off;"]