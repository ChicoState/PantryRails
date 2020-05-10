
# Contributing

Thank you for your interest in PantryRails Project. Our goal is to develop a food pantry for students in a university, who can have access to enough food to eat. We want to create a system to manage the inventory of a food pantry, as well as generate reports about the pantry's activities. We are trying to design a website that manages the information.

# Contributions

PantryRail welcomes contributions from everyone.

Contributions to PantryRails should be made in the form of GitHub pull requests. Each pull request will be reviewed by a core contributor (someone with permission) and either landed in the main tree or given feedback for changes that would be required.

# Installation & Development 

This project was developed in the mac environment. Installing Ruby

### Install home-brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

### Package manager brew and rbenv
brew update

### install ruby build
Brew install rbenv

### Add the below line to bash_profile
eval "$(rbenv init -)"

### Execute the command in the terminal
source .bash_profile

### Install rbenv
rbenv install 2.6.5

### Run the below command and every time we install new version of ruby
rbenv rehash
rbenv versions

### Check the version
ruby -v

### To switch to another version of ruby
Rbenv global 2.6.5

### To use the version inside that project
Rbenv local system
Rbenv local 2.6.5

### Installing the gems package manager
Gem -v
Gem list

### Installing Ruby on Rails
Gem install rails

###  Install mysql on MacOS
Brew update
Brew install mysql

###  To set root password
mysql_secure_installation
brew services start mysql
mysql -u root -p

### Install ruby gems for mysql
gem install mysql2
gem install mysql2 -- --with-opt-dir="$(brew --prefix openssl)"

### Installing javascript tools for ruby and rails
Brew install node
Brew install yarn

## Pull Request Process

1. Ensure any install or build dependencies are removed before the end of the layer when doing a build.
2. Update the README.md with details of changes to the interface, this includes new environment variables, exposed ports, useful file locations and container parameters.
3. Increase the version numbers in any examples files and the README.md to the new version that this Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
4. You may merge the Pull Request in once you have the sign-off of two other developers, or if you do not have permission to do that, you may request the second reviewer to merge it for you.



### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable behavior and are expected to take appropriate and fair corrective action in response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or reject comments, commits, code, wiki edits, issues, and other contributions that are not aligned to this Code of Conduct, or to ban temporarily or permanently any contributor for other behaviors that they deem inappropriate, threatening, offensive, or harmful.
