#!/bin/bash

echo [*] Updating...
find . -name '*.DS_Store' -type f -delete

echo [-] Cleaning up...
find debs -type f -name '*.deb' -delete
rm -r Packages.bz2

echo [+] Building Debs..
dpkg-deb -bZgzip projects/SetGen debs
dpkg-deb -bZgzip projects/Jailbreak\ Respring debs
dpkg-deb -bZgzip projects/phoenixfix debs
dpkg-deb -bZgzip projects/Terminal\ Power debs
dpkg-deb -bZgzip projects/Verbose\ Respring debs
dpkg-deb -bZgzip projects/MIXTAPE_PLAYER debs
dpkg-deb -bZgzip projects/Silk debs
dpkg-deb -bZgzip projects/RedSn0w\ Respring debs

echo [%] Scanning Packages...
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages

echo [=] Completed!
