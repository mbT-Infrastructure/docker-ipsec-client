FROM madebytimo/base

RUN apt update -qq && apt install -y -qq vpnc \
    && rm -rf /var/lib/apt/lists/*

ENV SERVER_HOST=""
ENV SERVER_GROUP_NAME=""
ENV SERVER_SECRET=""
ENV SERVER_USERNAME=""
ENV SERVER_PASSWORD=""

COPY files/connect-vpn.sh /usr/local/bin/connect-vpn.sh

CMD [ "connect-vpn.sh" ]
