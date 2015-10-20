FROM tutum/apache-php
RUN rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
ADD . /app
RUN mkdir /data
RUN chmod -R 777 /data
RUN chmod -R 777 /app
COPY php.ini /etc/php5/cli/php.ini
ENV username=admin
ENV password=password