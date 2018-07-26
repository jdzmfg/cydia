#!/bin/bash
echo [*] Scanning Packages..
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages
