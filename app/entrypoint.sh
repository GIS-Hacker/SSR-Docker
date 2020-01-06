#!/bin/sh

[ -e config.json ] && rm config.json

config=$(cat config.tmpl);
config="${config//\{PASSWORD\}/$PASSWORD}";
config="${config//\{PROTOCOL_PARAM\}/$PROTOCOL_PARAM}";
config="${config//\{REDIRECT\}/$REDIRECT}";
printf '%s\n' "$config" >config.json

echo "Configured, starting..."

exec "$@"
