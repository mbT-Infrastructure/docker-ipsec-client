FROM madebytimo/base

RUN apt update -qq && apt install -y -qq procps vpnc \
    && rm -rf /var/lib/apt/lists/*

COPY files/connect-vpn.sh /usr/local/bin/connect-vpn.sh
COPY files/custom-vpnc-script.sh /opt/ipsec-client/custom-vpnc-script.sh

ENV SERVER_HOST=""
ENV SERVER_GROUP_NAME=""
ENV SERVER_SECRET=""
ENV SERVER_USERNAME=""
ENV SERVER_PASSWORD=""
ENV SERVER_ROUTE="0.0.0.0/0"

CMD [ "connect-vpn.sh" ]
