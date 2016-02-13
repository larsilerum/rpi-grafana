FROM resin/rpi-raspbian:jessie
MAINTAINER Lars Larsson "lars.martin.larsson@gmail.com"
RUN apt-get update
RUN apt-get install libfontconfig
ADD grafana_2.2.0-pre1_armhf.deb .
RUN dpkg -i grafana_2.2.0-pre1_armhf.deb
CMD /usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini 
