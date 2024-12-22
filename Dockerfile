FROM ubuntu:latest

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nano net-tools rtl-sdr iproute2
RUN apt-get clean

COPY rtl_tcp_start.sh ./
RUN chmod +x ./rtl_tcp_start.sh

EXPOSE 1234
CMD ["./rtl_tcp_start.sh"]