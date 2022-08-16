CREATE DATABASE IF NOT EXISTS wordpressdb DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpressdb.* TO 'larlena'@'%' IDENTIFIED BY 'da_da_ya';
GRANT SELECT, INSERT ON wordpressdb.* TO 'SperMan'@'%' IDENTIFIED BY 'da_da_on';
FLUSH PRIVILEGES;