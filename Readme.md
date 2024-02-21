# ipsec-client image

This Container image extends the [base image](https://github.com/mbT-Infrastructure/docker-base).

This image contains a vpnc install to connect to IPSec vpns.

To put another container behind a vpn use this container and attach it to the container's networking
stack like described in the [documentation](https://docs.docker.com/network/#container-networks).

## Environment variables

-   `SERVER_HOST`
    -   IP or name of the IPSec gateway.
-   `SERVER_GROUP_NAME`
    -   IPSec group name.
-   `SERVER_ROUTE`
    -   Route for the IPSec vpn in CIDR notation, default: `0.0.0.0/0`.
-   `SERVER_SECRET`
    -   IPSec group password.
-   `SERVER_USERNAME`
    -   IPSec Xauth username.
-   `SERVER_PASSWORD`
    -   IPSec Xauth password.

## Development

To build and run for development run:

```bash
docker compose --file docker-compose-dev.yaml up --build
```

To build the image locally run:

```bash
./docker-build.sh
```
