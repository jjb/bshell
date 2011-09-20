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
echo '/usr/bin/env bshell prompt_config' >> ~/.bash_profile
</pre>

Usage
-----

<pre>
$ cd ~/projects/my_bundler_managed_project
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
$ cd ~/projects/awesome_project
$ bshell
AwesomeProject$
</pre>

Sweet!

Notes
-----
 * possible feature: like how rbenv or rvm pick up a ruby version, bshell could automatically pick up a bundler environment when a Gemfile is detected. This would have to be checked whenever the directory is changed... not exactly clear what should happen if a user `cd`s out of a project... fire up a new "normal" shell? For me, this could be okay -- it's rare that I go in and out of project dirs, usually I have Terminals up for the project, and other Terminals for other stuff. But then we'd be firing up more shells inside the ruby invocation or bundler... icky.
 * n.b.: i haven't used this extensively, there might be corner cases where the environment provided doesn't work out... ruby might run out of memory or munge characters...
 * Any other feedback, criticism, and ideas are welcome :-)
