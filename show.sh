#!/bin/sh

API_URL="https://rickandmortyapi.com/api/character"

echo "Search character(s) by ID"
printf "ID or IDs separated by comma (e.g., 1,2,3): "
read ids

echo "Querying the API..."
fetch -qo - "$API_URL/$ids" 2>/dev/null | \
  jq 'if type == "array" then
        .[] | {Name: .name, Status: .status, Species: .species, Origin: .origin.name}
      else 
	{Name: .name, Status: .status, Species: .species, Origin: .origin.name}
      end'
