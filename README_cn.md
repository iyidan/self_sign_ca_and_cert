## 简介
自动生成自签名的CA证书，及通过CA签名的多域名证书

## 背景
有时候我们要自己签发证书，网上有一大堆生成方式，多少有些残缺不全，比如：
* 在chrome中无法验证不通过
* 在iOS上安装后还是显示`尚未验证`
* ...

## 特点
* 信任CA证书后，在chrome中可验证通过，各设备上可以安装信任
* 可生成多域名证书

## 生成步骤
* 将代码 clone 到本地
* 修改 `openssl.cnf` 中的`[ alt_names ]`项，增加你自己的域名列表
* 修改`auto_gen_self_sign_ca_and_ssl_cert_basic.conf`中`CA_SUBJ`、`SERVER_SUBJ`变量，改成自己的
* 执行`./clean.sh`清空之前创建的keys
* 执行 `./auto_gen_self_sign_ca.sh` 生成自签名的CA证书
* 执行 `./auto_gen_self_sign_server_cert.sh` 生成对应CA签名的服务器证书
* 可用重复上面的步骤生成或清空

## 生成文件一览
所有生成的文件都放在`tmp`目录下：
* `ca-cert.pem` CA根证书，需要安装到设备上
* `server-cert.pem` 服务器证书
* `server-key.pem` 服务器私钥

## mac安装CA证书
* 双击`ca-cert.pem` 打开`钥匙串`
* 选择安装到`系统`目录下
* 右键点击对应的证书，点击`显示简介`
* 打开信任tab，选择`始终信任`

## iOS安装
通过邮件发送附件到手机上，点击附件，按提示安装并信任