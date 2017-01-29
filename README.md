# Config

**Config** is a basic checklist I follow to set up a new development environment on an iMac. It's heavily inspired by [mdo's version](https://www.github.com/mdo/config/).

## General preparations

### 1. Prepare OS X

- Make sure the latest available version of macOS is installed.
- Enable the secondary button for your mouse in `Preferences` > `Mouse`.
- Disable `Automatically rearrange spaces based on most recent use` in `Preferences` > `Mission Control`.

### 2. Setup Xcode
- Download and install latest version of Xcode from Mac App Store.
- Open Xcode and agree to the terms of use.
- Download and install Xcode Command Line Tools from [Apple Developer](https://developer.apple.com/downloads/).

### 3. Prepare Terminal

- Load [`.bash_profile`](/.bash_profile).
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`.
- Load up the Ocean theme from https://github.com/mdo/ocean-terminal.
- Install [Lavalamp](https://github.com/jasonlong/lavalamp/) for vim syntax highlighting.

### 4. Setup Firefox

- Download and install latest version of [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/).
- Make sure [Firebug](https://www.getfirebug.com/) extension is installed.

### 5. Install Homebrew

- Install latest version of [Homebrew](http://brew.sh/).
- Install wget using `$ brew install wget`.
- Install [Apache Maven](https://maven.apache.org/) using `$ brew install maven`.

## Web development

### 6. Setup Apache

- Change the following in Apache's `httpd.conf`:
  - Set `DocumentRoot` to `~/Work` (and make sure access to that directory is granted).
  - Set `AllowOverride` to `All` to enable use of `.htaccess` files.
  - Uncomment `LoadModule rewrite_module ...` to enable [mod_rewrite](https://httpd.apache.org/docs/current/mod/mod_rewrite.html) and `LoadModule php5_module ...` for PHP.
- Create a nice `index.html` file for your new document root.

### 7. Setup MySQL

- Download and install [MySQL Community Server](https://dev.mysql.com/downloads/mysql/) (DMG-Archive).
- Change MySQL's root password using `$ mysqladmin -u root -p'<temporary password>' password '<new password>'`. You got the temporary password during installation. If you don't want to have a root password, type `''` as new password.
- Download and install latest version of [phpMyAdmin](https://www.phpmyadmin.net/). A nice guide on how to set up phpMyAdmin can be found [here](https://www.coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-osx-10-11-el-capitan/).

### 8. Setup Node.js

- Download and install latest version of [Node.js](https://www.nodejs.org/).
- Globally install [Grunt](http://gruntjs.com/)'s CLI via npm: `$ npm install -g grunt-cli`

**Fixing npm permissions:** When you try to install Grunt (or any node package) globally and an error which looks like `Error: EACCESS: permission denied, mkdir '/usr/local/lib/node_modules/grunt-cli']` shows up, get information [here](https://docs.npmjs.com/getting-started/fixing-npm-permissions) on how to fix it.

### 9. Setup Composer
Open up a terminal window and execute the following lines to globally install [Composer](https://www.getcomposer.org/).

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
```

### 10. Setup Atom

- Download and install latest version of [Atom](https://www.atom.io/).
- Install favourite packages:
  - [Wrap in tag](https://www.atom.io/packages/atom-wrap-in-tag/)
  - [Selector to tag](https://www.atom.io/packages/selector-to-tag/)
  - [EditorConfig](https://www.atom.io/packages/editorconfig/)
  - [REST Client](https://www.atom.io/packages/rest-client/)
- Disable packages `wrap-guide` and `spell-check`.

**Hide specific directories from tree view:** If you want to hide directories like `.sass-cache` and `node_modules` from the tree view, add them to `Ignored Names` in Atom's config and make sure `Hide Ignored Names` in the config of package `tree-view` is activated.
