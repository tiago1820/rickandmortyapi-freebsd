#!/bin/sh

echo "Search character in Rick and Morty API"

echo "Querying the API..."
fetch -qo - "https://rickandmortyapi.com/api/character" | \
  jq '.results[] | {Name: .name, Status: .status, Species: .species, Origin: .origin.name}'

