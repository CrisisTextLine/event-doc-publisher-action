#!/bin/sh -l

# Generate the markdown file
echo "Generating markdown template from $1 to directory - $2"
ag "$1" @asyncapi/markdown-template -o "./$2"
echo "::set-output name=status::Completed"
