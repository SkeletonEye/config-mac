# Config

**Config** is a basic checklist I follow to set up a new development environment on an iMac. It's heavily inspired by [mdo's version](https://www.github.com/mdo/config/).

## General preparations

### 1. Prepare OS X

- Make sure the latest available version of macOS is installed.
- Enable the secondary button for your mouse in `Preferences` > `Mouse`.
- Download and install latest version of Xcode from Mac App Store.
- Download and install Xcode Command Line Tools from https://developer.apple.com/downloads/.

### 2. Prepare Terminal

- Load [`.bash_profile`](/.bash_profile).
- Load [`.gitconfig](/.gitconfig) contents into the global `~/.gitconfig`.
- Load up the Ocean theme from https://github.com/mdo/ocean-terminal

### 3. Setup Firefox

- Download and install latest version of [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/).
- Make sure [Firebug](http://www.getfirebug.com/) extension is installed.

## Web development

### 4. Setup Apache

- Change the following in Apache's `httpd.conf`:
  - Set `DocumentRoot` to `~/Work` (and make sure access to that directory is granted).
  - Set `AllowOverride` to `All` to enable use of `.htaccess` files.
  - Uncomment `LoadModule rewrite_module ...` to enable [mod_rewrite](http://httpd.apache.org/docs/current/mod/mod_rewrite.html) and `LoadModule php5_module ...` for PHP.
- Create a nice `index.html` file for your new `DocumentRoot`.

### 5. Setup MySQL

- Download and install [MySQL Community Server](http://dev.mysql.com/downloads/mysql/) (DMG-Archive).
- Change MySQL's root password using `$ mysqladmin -u root -p'<temporary password>' password '<new password>'`. You got the temporary password during installation. If you don't want to have a root password, type `''` as new password.
- Download and install latest version of [phpMyAdmin](https://www.phpmyadmin.net/). A nice guide on how to set up phpMyAdmin can be found [here](https://www.coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-osx-10-11-el-capitan/).

### 6. Setup Node.js and Composer

- Download and install latest version of [Node.js](https://www.nodejs.org/).
  - Globally install [Grunt](http://gruntjs.com/)'s CLI via npm: `$ npm install -g grunt-cli`
- Download and install latest version of [Composer](https://www.getcomposer.org/).

**Fixing npm permissions:** When you try to install Grunt (or any node package) globally and an error which looks like `Error: EACCESS: permission denied, mkdir '/usr/local/lib/node_modules/grunt-cli']` shows up, get information [here](https://docs.npmjs.com/getting-started/fixing-npm-permissions) on how to fix it.

### 7. Setup Atom

- Download and install latest version of [Atom](https://www.atom.io/).
- Install favourite packages:
  - [Wrap in tag](https://www.atom.io/packages/atom-wrap-in-tag)
  - [Selector to tag](https://www.atom.io/packages/selector-to-tag)
  - [EditorConfig](https://www.atom.io/packages/editorconfig)
  - [REST Client](https://www.atom.io/packages/rest-client)
- Disable packages `wrap-guide` and `spell-check`.

**Hide specific directories from project tree:** If you want to hide directories like `.sass-cache` and `node_modules` from the tree view, add them to `Ignored Names` in Atom's config and make sure there's a cross in front of `Hide Ignored Names` in the config of package `tree-view`.
