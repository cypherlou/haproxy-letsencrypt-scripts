# general purpose definitions - mostly from pretty logging

# config used by letsencrypt-new.sh
# post to start letsencrypt on. Note this needs to match up with the HAProxy configuration you have used.
COLOUR_LOGGING=0
BASE_PORT=9999
LETS_ENCRYPT_DIR="/usr/local/bin/letsencrypt"
CERT_CMD="${LETS_ENCRYPT_DIR}/letsencrypt-auto certonly --standalone --preferred-challenges http --http-01-port ${BASE_PORT} --renew-by-default --agree-tos --quiet --non-interactive"
INSTALL_CMD="${BASE_DIR}/letsencrypt-copy-haproxy.sh"
CERT_DIR="/etc/letsencrypt/live/"
HAPROXY_CHECK=1
HAPROXY_CMD="/usr/sbin/haproxy"
HAPROXY_CONFIG="/etc/haproxy/haproxy.cfg"
HAPROXY_CERT_DIR="/etc/haproxy/certs"
MINIMAL_INSTALL=1

# config used by letsencrypt-copy-haproxy.sh
BASE_LE_DIR="/etc/letsencrypt/live"
OPEN_SSL_CMD="/usr/bin/openssl"

# config used by
CERT_RENEW_CMD="${LETS_ENCRYPT_DIR}/letsencrypt-auto renew --standalone --preferred-challenges http --http-01-port ${BASE_PORT} --agree-tos --non-interactive"

if [[ "$COLOUR_LOGGING" -eq 1 ]]; then
    RESET="\e[39m"
    RED="\e[31m"
    LRED="\e[91m"
    YELLOW="\e[33m"
    BLUE="\e[94m"
fi
