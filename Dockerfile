FROM maxexcloo/nginx-php

ENV USERNAME admin
ENV PASSWORD password

RUN sed -i 's/user = core/user = root/' /etc/php5/fpm/pool.d/default.conf  && \
	sed -i 's/group = core/group = root/' /etc/php5/fpm/pool.d/default.conf && \
	sed -i 's/variables_order = "GPCS"/variables_order = "EGPCS"/' php.ini && \
	sed -i 's/command=php5-fpm/command=php5-fpm -R/' /etc/supervisor/conf.d/php-fpm.conf 
	
ADD ./data /data
VOLUME /data/http/data/User/admin/home
