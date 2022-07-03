#!/bin/bash
service mysql start
mysql -u root --password="" <<EOF
CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET ${DB_CHARSET} COLLATE ${DB_ENCODING};
GRANT ALL ON ${DB_NAME}.* TO '${DB_ADMIN}'@'%' IDENTIFIED BY '${DB_ADMIN_PASS}';
FLUSH PRIVILEGES;
EOF

/usr/bin/mysqld_safe