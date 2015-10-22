FROM tutum/apache-php
RUN rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
ADD . /app
RUN mkdir /data
RUN chmod -R 777 /data
RUN chmod -R 777 /app
ENV APACHE_RUN_USER root
ENV APACHE_RUN_GROUP root
ENV username=admin
ENV password=password