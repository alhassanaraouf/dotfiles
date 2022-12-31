#!/bin/bash
parent_path=$(
	cd "$(dirname "${BASH_SOURCE[0]}")"
	pwd -P
)

cd "$parent_path"

value=$(<./adblock-list)

echo $value

for entry in $value; do
	./adblock-update.sh $entry
done
