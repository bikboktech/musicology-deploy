ALLOWED_HOST="%"

find "/docker-entrypoint-initdb.d/" -follow -type f -name "*.sql" | sort -V | while read -r f; do
    SQL_CONTENT=$(cat $f | sed "s|{MYSQL_USER}|${MYSQL_USER}|g")
    SQL_CONTENT=$(echo $SQL_CONTENT | sed "s|{ALLOWED_HOST}|${ALLOWED_HOST}|g")
    mysql --user $MYSQL_USER -p --execute "$SQL_CONTENT"
done
