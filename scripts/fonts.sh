#!/usr/bin/env bash
#
# Install powerline Fonts
#
echo "Installing powerline Fonts..."
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts