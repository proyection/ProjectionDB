CREATE DATABASE projectiondb CHARACTER SET utf8 COLLATE utf8_general_ci;
use projectiondb;
CREATE USER 'projectionuser' IDENTIFIED BY 'projectionpass';
GRANT ALL PRIVILEGES ON projectiondb.* TO 'projectionuser'@'%' IDENTIFIED BY 'projectionpass';
GRANT ALL PRIVILEGES ON projectiondb.* TO 'projectionuser'@'localhost' IDENTIFIED BY 'projectionpass';
FLUSH PRIVILEGES;
