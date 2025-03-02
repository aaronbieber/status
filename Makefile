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

sends:
	find content/posts -iname 'index.md' -exec yq -f extract {} \; | yq ea '[.sends] | flatten | map(capture("(?P<color>[\w\s]*?)\s?(?P<grade>V?[\d.+-]+)(?P<meta>\s?.*)")) | sort_by(.grade, .color) | map("\(.color) \(.grade)\(.meta)")'

sendcounts:
	find content/posts -iname 'index.md' -exec yq -f extract {} \; | yq ea '[.sends] | flatten | map(capture("(?P<color>[\w\s]*?)\s?(?P<grade>V?[\d.+-]+)(?P<meta>\s?.*)")) | map("\(.grade)")' | awk '{print $$2}' |  tr -d '"' | sort -n | uniq -c
