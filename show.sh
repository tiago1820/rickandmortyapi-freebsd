#!/bin/sh

API_URL="https://rickandmortyapi.com/api/character"

echo "Search for a character in Rick and Morty"
printf "Enter name: "
read name
printf "Enter status (optional: Alive, Dead, unknown): "
read status

name_url=$(echo "$name" | sed 's/ /%20/g')
status_url=$(echo "$status" | sed 's/ /%20/g')

query="$API_URL/?"
[ -n "$name" ] && query="${query}name=$name_url"
[ -n "$status" ] && query="${query}&status=$status_url"

echo "Querying the API..."
fetch -qo - "$query" 2>/dev/null | \
  jq '.results[] | {Name: .name, Status: .status, Species: .species, Origin: .origin.name}'
