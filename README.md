## Intro
Automatically generate self-signed CA certificates and multiple domain name certificates signed by CA

中文介绍：https://github.com/iyidan/self_sign_ca_and_cert/blob/master/README_cn.md

## Background
Sometimes we have to issue a certificate ourselves, there are a lot of ways to generate if we  find on the internet(e.g. google/baidu ...), but many of them are incomplete:

* Some of them verify failed on chrome
* Some of them can not install into iOS and add to trust list
* And so on ...

## Feature
* Work completely and correctly
* Support generate multi domains certificate

## Steps
* Clone the code into your mac/linux
* Open `openssl.cnf` file, modify the `[ alt_names ]` directive, add your custom domains
* Open `auto_gen_self_sign_ca_and_ssl_cert_basic.conf` file, modify `CA_SUBJ`、`SERVER_SUBJ`
* Run `./clean.sh` to clean prev generated certificates
* Run `./auto_gen_self_sign_ca.sh` to generate the CA certificate
* Run `./auto_gen_self_sign_server_cert.sh` to generate the server certificate
* Repeat the above steps if you want to re-generate certificates

## Certificate Filenames
All certificates and keys are placed in the `tmp` directory:
* `ca-cert.pem` The CA certificate
* `server-cert.pem` The server certificate
* `server-key.pem` The server private key