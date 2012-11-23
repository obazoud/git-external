# git-external

Intends to provide an alternative to git-submodules but without being
attach to an specific commit

## Requiments

* ruby 1.8 or 1.9
* gem
* git

## Dependencies

* gem install rubygems

## Usage

Setup a new git repository:
<pre class="terminal">
git init
</pre>

Help git external:
<pre class="terminal">
git external
</pre>

Setup a new "external" repository:
<pre class="terminal">
git external add <repository> <path> <branch>
</pre>

Initialize external repositories:
<pre class="terminal">
git external init
</pre>

Update existing repositories to the latest version:
<pre class="terminal">
git external update
</pre>

Status of your repository:
<pre class="terminal">
git external status
</pre>

Configuration of your repository:
<pre class="terminal">
git external list
</pre>

Execute a command over "external" repository:
<pre class="terminal">
git external cmd 'git status'
git external cmd 'git pull --rebase'
git external cmd 'git fetch'
</pre>

Remove an external repository:
<pre class="terminal">
git external rm <path>
</pre>

## Installation from source

<pre class="terminal">
git clone git://github.com/obazoud/git-external.git
cd git-external
git checkout develop
gem build obazoud-git-external.gemspec && gem install --local obazoud-git-external-0.8.0.gem
</pre>

And voilà!

