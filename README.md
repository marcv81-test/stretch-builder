# stretch-builder

This project provides a Debian Stretch build environment in a Docker container.

## Run

    ./env.sh

## Build gdm3

    sudo apt-get build-dep -y gdm3

    cd workspace
    apt-get source gdm3
    cd gdm3-3.22.3/
    quilt import ../patches/gdm3-autologin-wayland-fix.patch
    quilt push
    dch -v 3.22.3-3fix1

    debuild -uc -us

## Install gdm3

    dpkg -i libgdm1_3.22.3-3fix1_amd64.deb gdm3_3.22.3-3fix1_amd64.deb gir1.2-gdm-1.0_3.22.3-3fix1_amd64.deb
