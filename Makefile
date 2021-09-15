build:
	python build.py

deploy:
	./prettier.sh
	lftp ftp://aurelvelicanu-001@FTP.SITE4NOW.NET -e "set ssl:verify-certificate false;cd adisbikeworld ; mput *.html ; quit"

pretty:
	./prettier.sh

deploy-all:
	lftp ftp://aurelvelicanu-001@FTP.SITE4NOW.NET -e "set ssl:verify-certificate false;cd adisbikeworld ; mput * ; quit"

clean:
	rm *.html
