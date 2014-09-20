#!/usr/bin/sh

# update Brewfile.sh
ruby ./setup.rb Brewfile > brewfile.sh
chmod +x brewfile.sh

# setup
sh brewfile.sh



