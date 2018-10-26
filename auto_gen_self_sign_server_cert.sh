#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cd tmp/
if [[ $? -ne 0 ]]; then
    exit 1
fi

. $SCRIPTPATH/auto_gen_self_sign_ca_and_ssl_cert_basic.conf

main() {
    # 执行
    gen_server_keys
    verify_key
}

# -------------------

main
