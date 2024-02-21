#!/usr/bin/env bash
set -e

vpnc --gateway "$SERVER_HOST" --id "$SERVER_GROUP_NAME" --no-detach --password "$SERVER_PASSWORD" \
    --script /opt/ipsec-client/custom-vpnc-script.sh --secret "$SERVER_SECRET" \
    --username "$SERVER_USERNAME"
