# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "sinatra-verbs"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rafael Fernández López"]
  s.email       = ["ereslibre@gmail.com"]
  s.homepage    = "http://git.ereslibre.es/sinatra-verbs/"
  s.summary     = %q{Sinatra extension that allows you to add your own HTTP verbs}
  s.description = %q{Sinatra extension that allows you to add your own HTTP verbs}
  s.rubyforge_project = "sinatra-verbs"
  s.add_runtime_dependency 'sinatra', '>= 1.0.0'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
