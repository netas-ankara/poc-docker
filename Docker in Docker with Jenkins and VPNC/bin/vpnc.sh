#!/bin/sh

cat > /etc/vpnc/default.conf <<EOF
IPSec gateway ${VPNC_GATEWAY}
IPSec ID ${VPNC_ID}
IPSec secret ${VPNC_SECRET}
Xauth username ${VPNC_USERNAME}
Xauth password ${VPNC_PASSWORD}
DPD idle timeout (our side) 10
EOF

exec /usr/sbin/vpnc default --detach --non-inter --local-port 0