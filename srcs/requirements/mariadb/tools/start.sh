#!/bin/bash
service mysql start
mysql -u root --password="" <<EOF
CREATE DATABASE IF NOT EXISTS wordpressdb DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpressdb.* TO 'larlena'@'%' IDENTIFIED BY 'da_da_ya';
FLUSH PRIVILEGES;
EOF

/usr/bin/mysqld_safe