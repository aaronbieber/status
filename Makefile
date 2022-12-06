# Makefile for deploying blog.aaronbieber.com.

OPTS=-rovz --delete
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
SRC=./public/
DEST=airborne@aaronbieber.com:/var/www/status.aaronbieber.com/htdocs/

build:
	hugo --cleanDestinationDir -e production

deploy: build
	rsync $(OPTS) $(EXCLUDE) $(SRC) $(DEST)
