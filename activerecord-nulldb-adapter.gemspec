# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nulldb/version'

Gem::Specification.new do |s|
  s.name = "activerecord-nulldb-adapter"
  s.version = NullDB::VERSION

  s.require_paths = ["lib"]
  s.authors = ["Avdi Grimm", "Myron Marston", "Danilo Cabello"]
  s.summary = "The Null Object pattern as applied to ActiveRecord database adapters"
  s.description = "A database backend that translates database interactions into no-ops. Using NullDB enables you to test your model business logic - including after_save hooks - without ever touching a real database."
  s.email = "cabello@users.noreply.github.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files    = `git ls-files`.split($/)
  s.homepage = "https://github.com/nulldb/nulldb"
  s.licenses = ["MIT"]

  s.add_runtime_dependency 'activerecord', '>= 5.1.0', '< 6.3'
  s.add_development_dependency 'spec'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pry-byebug'
end
