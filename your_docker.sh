#!/bin/sh
set -e
tmpFile=$(mktemp)
nim compile --verbosity=0 --out="$tmpFile" app/main.nim &> /dev/null
exec "$tmpFile" "$@"
