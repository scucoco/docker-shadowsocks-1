#!/usr/bin/env sh

set -e

exec ss-server -v \
    -s ${SHADOWSOCKS_HOST:-0.0.0.0} \
    -p ${SHADOWSOCKS_PORT:-8388} \
    -k ${SHADOWSOCKS_SCERET:-801201} \
    -t ${SHADOWSOCKS_TIMEOUT:-300} \
    -m ${SHADOWSOCKS_ENCRYPTIONMETHOD:-aes-256-cfb} \
    -n ${SHADOWSOCKS_MAXOPENFILES:-1000} \
    --fast-open -u \
    --plugin obfs-server --plugin-opts obfs=${SIMPLE_OBFS_METHOD:http}
