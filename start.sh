#!/bin/bash
set -e

if [ -z "$SECRET_PATH" ]; then
    echo "Need to set SECRET_PATH to indicate where mounted files are stored"
    exit 1
fi
if [ ! -e "/usr/local/apache2/htdocs/$SECRET_PATH" ]; then
	ln -s "/usr/local/private" "/usr/local/apache2/htdocs/$SECRET_PATH"
fi

httpd-foreground