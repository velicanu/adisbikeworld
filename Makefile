build:
	python build.py

deploy:
	# ./prettier.sh
	lftp -u "$(ADISBIKEWORLD_USER),$(ADISBIKEWORLD_PASS)" ftp://win5186.site4now.net -e "set ssl:verify-certificate false;cd adisbikeworld ; mput *.html ; quit"

pretty:
	./prettier.sh

deploy-all:
	lftp -u "$(ADISBIKEWORLD_USER),$(ADISBIKEWORLD_PASS)" ftp://win5186.site4now.net -e "set ssl:verify-certificate false;cd adisbikeworld ; mput * ; quit"

clean:
	rm *.html
