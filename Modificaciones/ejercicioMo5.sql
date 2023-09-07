INSERT INTO user (username,password)
VALUES ("Josefina",(SELECT password FROM user WHERE username like "carolina%"));  