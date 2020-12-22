build:
	python build.py

deploy:
	sftp aurelvelicanu-001@FTP.SITE4NOW.NET < deploy-html-only.sftp

deploy-all:
	sftp aurelvelicanu-001@FTP.SITE4NOW.NET < deploy-all.sftp

clean:
	rm *.html
