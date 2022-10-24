FROM httpd:2.4-alpine

RUN apk add bash
RUN echo "Include conf/vhost.conf" >> /usr/local/apache2/conf/httpd.conf
COPY vhost.conf /usr/local/apache2/conf/
RUN rm /usr/local/apache2/htdocs/*
COPY _info.json /usr/local/apache2/htdocs/

COPY start.sh /usr/bin/

CMD ["start.sh"]