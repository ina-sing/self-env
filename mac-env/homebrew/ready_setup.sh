#!/bin/sh
# Java Install Check
RET=`java -version`

if [ "$RET" = "No Java runtime present, requesting install." ]; then
    exit 1
fi

# set dir
sudo mkdir /usr/local/bin/

# Install Homebrew
echo 'Install Homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check Homebrew Install
brew doctor

exit 0;
