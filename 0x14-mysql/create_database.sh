#!/usr/bin/env bash
# this creates the database to use and a table and also

# creates a table nexus6 in database tyrell_corp
echo "Creating table nexus6 in database tyrell_corp"
mysql -u root -p -e "
CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS nexus6 (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
    );
INSERT INTO nexus6 (name)
VALUES ('Brian'),
    ('Digreat');
"

# grants SELECT privilege to holberton_user
echo "Granting SELECT privilege to user holberton_user for table nexus6 in database tyrell_corp"
mysql -u root -p -e "GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost'"
