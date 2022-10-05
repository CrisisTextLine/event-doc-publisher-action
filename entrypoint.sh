#!/bin/sh -l

# Generate the yaml file..
echo "docs/asyncapi.yml => $1"
echo "app/docs => $2"
echo "app/docs => $3"

# Generate the markdown file
ag "$1" @asyncapi/markdown-template -0 "./$2"
echo "Generating markdown template from $1 to directory - $2"
echo "::set-output name=status::Completed"