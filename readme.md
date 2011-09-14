bshell
======

Installation
------------
Add bshell to your project's Gemfile:

    gem 'bshell'

> $ bundle install

Add this line to your shell config:

> echo '/usr/bin/env bshell prompt_config' >> .bash_profile


Usage
-----

> cd ~/projects/my_bundler_managed_project
> $ type rake
> rake not found
> $ bshell
> $ type rake
> /Users/john/.rbenv/shims/rake


Customization
-------------

Add the current project name to your prompt:

    export $PROMPT=$BUNDLER_PROJECT_NAME$PROMPT

Now you get:

> cd ~/projects/awesome_project
> $ bshell
> AwesomeProject$

Sweet!
