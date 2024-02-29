#!/usr/bin/env bash
set -e

if [[ -n "$SOCAT_ARGUMENTS" ]]; then
    run-socat.sh &
fi

vpnc --gateway "$SERVER_HOST" --id "$SERVER_GROUP_NAME" --no-detach --password "$SERVER_PASSWORD" \
    --script /opt/ipsec-client/custom-vpnc-script.sh --secret "$SERVER_SECRET" \
    --username "$SERVER_USERNAME" &

wait -n
