#!/bin/bash
echo [*] Cleaning up..
find debs -type f -name '*.deb' -delete
rm -r Packages.bz2
