bshell
======

Installation
------------
Add bshell to your project's Gemfile:

    gem 'bshell'

<pre>
$ bundle install
</pre>

Add this line to your shell config:

<pre>
echo '/usr/bin/env bshell prompt_config' >> .bash_profile
</pre>

Usage
-----

<pre>
cd ~/projects/my_bundler_managed_project
$ type rake
rake not found
$ bshell
$ type rake
/Users/john/.rbenv/shims/rake
</pre>

Customization
-------------

Add the current project name to your prompt:

    export $PROMPT=$BUNDLER_PROJECT_NAME$PROMPT

Now you get:

<pre>
cd ~/projects/awesome_project
$ bshell
AwesomeProject$
</pre>

Sweet!
