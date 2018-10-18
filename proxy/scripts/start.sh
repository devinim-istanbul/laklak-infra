#!/bin/bash

## this script creates site configurations for nginx using the templates at the `proxy/templates` folder,
## and then starts nginx in non-daemon mode
echo "Accepting requests with hostname suffix $PUBLIC_HOST_SUFFIX"

for SOURCE in /site-templates/*.conf
do
    FILENAME=$(basename $SOURCE)
    TARGET="/etc/nginx/conf.d/$FILENAME"
    bash /scripts/envsubst.sh < $SOURCE > $TARGET
    echo "Created site configuration at $TARGET"
done

echo "Running nginx"
nginx -g 'daemon off;'