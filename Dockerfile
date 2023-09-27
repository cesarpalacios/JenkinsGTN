FROM php:7.4-apache
RUN apt-get update && apt-get upgrade -y
#RUN rm -r /etc/apache2/sites-enabled/* 
#RUN rm -r /etc/apache2/sites-available/*
#ADD ./site.conf /etc/apache2/sites-enabled/
#RUN ln -s /etc/apache2/sites-available/site.ceapalaciosal.conf /etc/apache2/sites-enabled/
RUN chown -R www-data:www-data /var/www/html
RUN apt-get install software-properties-common -y
RUN apt-get update
#RUN apt-get install wget build-essential libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y
#RUN apt-get install python3 -y && apt-get install python3-pip -y && pip3 install django
#RUN apt-get install libapache2-mod-wsgi-py3 -y && a2enmod wsgi
RUN service apache2 restart
