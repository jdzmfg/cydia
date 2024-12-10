#!/bin/bash
echo [*] Building Packages..
dpkg-deb -bZgzip projects/SetGen debs
dpkg-deb -bZgzip projects/Savethemblobs debs
dpkg-deb -bZgzip projects/Jailbreak\ Springy debs
dpkg-deb -bZgzip projects/phoenixfix debs
dpkg-deb -bZgzip projects/Terminal\ Power debs
dpkg-deb -bZgzip projects/Verbose\ Springy debs
dpkg-deb -bZgzip projects/MIXTAPE_PLAYER debs
dpkg-deb -bZgzip projects/Prompt\ 2 debs
dpkg-deb -bZgzip projects/Textastic debs
