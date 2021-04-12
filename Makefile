build:
	python build.py

deploy:
	./prettier.sh
	sftp aurelvelicanu-001@FTP.SITE4NOW.NET < deploy-html-only.sftp

pretty:
	./prettier.sh

deploy-all:
	sftp aurelvelicanu-001@FTP.SITE4NOW.NET < deploy-all.sftp

clean:
	rm *.html
