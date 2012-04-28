#!/usr/bin/env gem build
# encoding: utf-8

Gem::Specification.new do |s|
  s.name = "padrino-cms"
  s.rubyforge_project = "padrino-cms"
  s.authors = ["Steve Laing"]
  s.email = "steve.laing@gmail.com"
  s.summary = "Content management for Padrino"
  s.homepage = "http://github.com/steventux/padrino-cms"
  s.description = "Content fragments, components and pages for Padrino applications"
  s.required_rubygems_version = ">= 1.3.6"
  s.version = "0.1.1"
  s.date = Time.now.strftime("%Y-%m-%d")

  s.extra_rdoc_files = Dir["*.rdoc"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.rdoc_options  = ["--charset=UTF-8"]

  s.add_dependency("bcrypt-ruby")
  s.add_dependency("padrino-core")
  s.add_dependency("padrino-gen")
  s.add_dependency("padrino-helpers")
  s.add_dependency("padrino-admin")
end
