# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'obazoud-git-external'
  s.version = '0.4.0'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Daniel Cestari', 'Olivier Bazoud', 'Alastair Harrison']
  s.email = ["olivier.bazoud@gmail.com"]
  s.homepage = "http://github.com/obazoud/git-external"
  s.summary = "Git version of an svn:external, an alternative to Git Submodule"
  s.description = "Extension for git which adds a command providing similar functionality to git submodules but without attaching each module to a single version"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f[/^bin\/(.*)/, 1]}.compact

  s.required_ruby_version = '~> 1.8.7'

end

