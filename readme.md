sculpin-up
==========

Utilize [Vagrant](https://www.vagrantup.com/) to quickly start developing your [Sculpin](https://sculpin.io/) based website.

### How do I use this?

- clone this repository
- run `vagrant up` and give it a minute to complete
- open [192.168.56.100](http://192.168.56.100) in your browser
- Voilà! You should see [sculpin-blog-skeleton](https://github.com/sculpin/sculpin-blog-skeleton) generated and served.

### What does it do?

- Downloads and updates an ubuntu 16.04 box
- Installs php, git, nginx and composer
- clones the `sculpin-blog-skeleton` repository
- configures nginx to serve the generated website
- syncs the sculpin project folder with the host machine

### How do I develop my own sculpin-based website?

- ssh into the box: `vagrant ssh`
- have sculpin watch for changes: `cd www && vendor/bin/sculpin generate --watch`
- edit the source files in the `www` folder