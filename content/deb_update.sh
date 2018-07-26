#!/bin/bash
echo [*] Updating Cydia Deb Packages..
find . -name '*.DS_Store' -type f -delete
./update.sh
echo [*] Done!
