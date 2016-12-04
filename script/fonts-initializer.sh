#!/bin/sh
# Download severals fonts, then register it to home dir.
# TODO: better procedures

if [ "$USER" = "root" ]; then
    echo "You're running as root. Attempt to exit."
    exit 0
fi

if [ ! -d ~/.fonts/ ]; then
    echo "==>Creating local fonts directory."
    mkdir ~/.fonts/
fi

cd ~/.fonts/

# {{{ awesome-terminal-fonts
rm -rf awesome-terminal-fonts
git clone https://github.com/gabrielelana/awesome-terminal-fonts --depth 1

cd awesome-terminal-fonts
mv ./build/ /tmp/font-temp

rm -rf ./* .git .gitignore
mv /tmp/font-temp/* ./
rm -rf /tmp/font-temp
cd ..
# }}}

# Register fonts
fc-cache -fv ~/.fonts
