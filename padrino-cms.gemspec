#!/usr/bin/env gem build
# encoding: utf-8

require File.expand_path("../../padrino-core/lib/padrino-core/version.rb", __FILE__)

Gem::Specification.new do |s|
  s.name = "padrino-cms"
  s.rubyforge_project = "padrino-cms"
  s.authors = ["Steve Laing"]
  s.email = "steve.laing@gmail.com"
  s.summary = "Content management for Padrino"
  s.homepage = "http://github.com/steventux/padrino-cms"
  s.description = "Content fragments, components and pages for Padrino applications"
  s.required_rubygems_version = ">= 1.3.6"
  s.version = Padrino.version
  s.date = Time.now.strftime("%Y-%m-%d")

  s.extra_rdoc_files = Dir["*.rdoc"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.rdoc_options  = ["--charset=UTF-8"]

  s.add_dependency("padrino-core", Padrino.version)
  s.add_dependency("padrino-helpers", Padrino.version)
  s.add_dependency("padrino-admin", Padrino.version)
end