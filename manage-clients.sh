#!/bin/bash

source .env

ssh "$USERNAME@$SERVER_IP" -t './openvpn-install.sh'

mkdir -p clients

scp "$USERNAME@$SERVER_IP":~/*.ovpn ./clients/
