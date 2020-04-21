build:
	python build.py

deploy:
	sftp aurelvelicanu-001@FTP.SITE4NOW.NET < deploy.sftp

clean:
	rm *.html

