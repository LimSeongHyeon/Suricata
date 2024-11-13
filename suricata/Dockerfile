FROM ubuntu:latest

RUN apt update
RUN apt install -y vim jq iproute2 net-tools tcpdump curl ngrep

# https://docs.suricata.io/en/suricata-7.0.7/install.html#ubuntu-from-personal-package-archives-ppa
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:oisf/suricata-stable -y
RUN apt-get update -y
RUN apt-get install suricata -y
RUN apt install -y nginx

RUN suricata-update
RUN sed -i 's/^RUN=.*/RUN="yes"/' /etc/default/suricata

COPY nginx.conf /etc/nginx/nginx.conf
COPY suricata.yaml /etc/suricata/suricata.yaml
COPY local.rules /var/lib/suricata/rules/local.rules

COPY start_services.sh /start_services.sh
RUN chmod +x /start_services.sh

CMD ["/start_services.sh"]
