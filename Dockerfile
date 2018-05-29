FROM debian:stable-slim

RUN apt-get update && apt-get install -y apache2 php php-mbstring php-json php-mcrypt php-curl libapache2-mod-php && rm -rf /var/lib/apt/lists/*

# Init
ADD init.sh /init.sh
RUN chmod 755 /*.sh

ADD vkrss /var/www/html/

CMD ["/init.sh"]
