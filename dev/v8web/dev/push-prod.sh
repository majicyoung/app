mysqldump -uroot pagreit3_verifik8 > dev/pagreit3_verifik8.sql
rsync -avz  --exclude .git --exclude target -e ssh ./  tomcat@v8-dev.pirogprod.info:./app/
