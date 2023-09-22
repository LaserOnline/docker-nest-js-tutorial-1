#!/bin/sh

if ! command -v git &> $is_not_installed; then
    apt-get install -y git
fi

git clone https://github.com/LaserOnline/nest-js-tutorial.git

apt remove -y git