# Makefile for deploying blog.aaronbieber.com.

OPTS=-rvz --delete
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
SRC=./public/
DEST=airborne@10.20.10.40:/var/www/status.aaronbieber.com/htdocs/

build:
	hugo --cleanDestinationDir -e production

upload: build
	rsync $(OPTS) $(EXCLUDE) $(SRC) $(DEST)

deploy: upload
	curl `cat webhook_url`
	@echo ""
