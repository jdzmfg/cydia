#!/usr/bin/env bash
set -e # halt script on error

echo '[*]Building...'
bundle exec jekyll build
echo '[*]Checking...'
bundle exec htmlproofer ./_site --only-4xx
echo '[*]Done!'
