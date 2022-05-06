#!/bin/bash
# Install command-line tools using Homebrew

brew analytics off
brew update
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`
brew install gnu-sed


# Install wget
brew install wget

# Install more recent versions of some OS X tools
brew install vim
brew install grep
brew install openssh

# z hopping around folders
brew install z

# nicer git diffs
brew install git-delta
brew install git

# better `top`
brew install glances

# lint for .sh files
brew install shellcheck

# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install fzf

brew install imagemagick
brew install rename
brew install tree
brew install ffmpeg

# json stuff
brew install jq gron

# disk usage tool
brew install ncdu 

# download movies from youbue
brew install youtube-dl

# will probably need these at some point
brew install automake cmake go

# Remove outdated versions from the cellar
brew cleanup
