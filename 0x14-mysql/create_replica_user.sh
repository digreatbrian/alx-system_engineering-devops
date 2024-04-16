#!/usr/bin/env bash
# this creates the replica user for mysql server

# creating user and granting priviledges and also displaying grants
mysql -u root -p -e "
CREATE USER 'holberton_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'projectcorrection280hbtn';
GRANT REPLICATION SLAVE ON *.* TO 'holberton_user'@'localhost';
SHOW GRANTS FOR 'holberton_user'@'localhost';
"
