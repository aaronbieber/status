opts := "-rvz --delete"
exclude := "--exclude '.git*' --exclude '.*' --exclude '\\#*\\#' --exclude Makefile --exclude justfile"
src := "./public/"
dest := "airborne@10.20.10.40:/var/www/status.aaronbieber.com/htdocs/"

build:
    hugo --cleanDestinationDir -e production

upload: build
    rsync {{ opts }} {{ exclude }} {{ src }} {{ dest }}

deploy: upload
    curl `cat webhook_url`
    @echo ""

# YAML insanity ensues
capture_grades := 'capture("(?P<color>[\w\s]*?)\s?(?P<grade>V?[\d.+-]+)(?P<meta>\s?.*)")'

sends:
    find content/posts -iname 'index.md' -exec yq -f extract {} \; | \
    yq ea '[.sends] | flatten | map({{ capture_grades }}) | sort_by(.grade, .color) | map("\(.color) \(.grade)\(.meta)")'

sendcounts:
    find content/posts -iname 'index.md' -exec yq -f extract {} \; | \
    yq ea '[.sends] | flatten | map({{ capture_grades }}) | map("\(.grade)")' | \
    awk '{print $2}' | \
    tr -d '"' | \
    sort -n | \
    uniq -c
