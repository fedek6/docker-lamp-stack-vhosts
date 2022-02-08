# create databases
CREATE DATABASE IF NOT EXISTS `example_com`;

# create root user and grant rights
CREATE USER 'root'@'localhost' IDENTIFIED BY 'toor';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';