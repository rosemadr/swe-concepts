#!/bin/bash
if [ -z "$1" ]; then
    echo "please give a name for the file"
fi
touch $1.md
echo -e "# $1 \n\n___\n## Resources/citations" > $1.md