#!/bin/bash
service mysql start
mysql -u root --password="" <<EOF
CREATE DATABASE wordpressdb DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpressdb.* TO 'admin'@'%' IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
EOF

bash