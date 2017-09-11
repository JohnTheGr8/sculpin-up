#!/bin/bash

###
# Composer
###

wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet

mkdir -p ~/bin
mv composer.phar ~/bin/composer
chmod u+x ~/bin/composer

###
# Clone sculpin blog skeleton
###

git clone https://github.com/sculpin/sculpin-blog-skeleton.git www

cd www

~/bin/composer install

###
# Generate sculpin site
###

vendor/bin/sculpin generate --env=dev