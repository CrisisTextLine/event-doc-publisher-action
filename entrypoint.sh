#!/bin/sh -l

ag "$1" @asyncapi/markdown-template -0 "./$2"
echo "Generating markdown template from $1 to directory - $2"
echo "::set-output name=status::Completed"