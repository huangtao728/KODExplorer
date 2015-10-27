FROM maxexcloo/nginx-php

ENV PASSWORD password

RUN sed -i 's/user = core/user = root/' /etc/php5/fpm/pool.d/default.conf  && \
	sed -i 's/group = core/group = root/' /etc/php5/fpm/pool.d/default.conf && \
	sed -i 's/command=php5-fpm/command=php5-fpm -R/' /etc/supervisor/conf.d/php-fpm.conf 
	
ADD ./data /data
RUN sed -i "s/$password = 'POIUYTREWQWERTYUIOP';/$password = '$PASSWORD';/" /data/http/controller/util.php

VOLUME /data/http/data/User/admin/home
