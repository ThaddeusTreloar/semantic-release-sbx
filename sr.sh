#!/bin/sh
npx -p node@20.6.1 \
    -p semantic-release@22.0.12 \
    -p semantic-release-ado \
    -p @semantic-release/release-notes-generator \
    -p @semantic-release/changelog \
    -p @semantic-release/git \
    --cache ./npx-cache semantic-release \
    --tag-format "v{version}"