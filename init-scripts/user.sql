UPDATE mysql.user SET host='{ALLOWED_HOST}' WHERE host='localhost' AND user='{MYSQL_USER}';
UPDATE mysql.db SET host='{ALLOWED_HOST}' WHERE host='localhost' AND user='{MYSQL_USER}';
FLUSH PRIVILEGES;
COMMIT;
