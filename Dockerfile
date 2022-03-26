FROM ubuntu

RUN apt update; \
DEBIAN_FRONTEND=noninteractive apt install apache2 -y

EXPOSE 80

CMD service apache2 start && while :; do foo; sleep 2; done
