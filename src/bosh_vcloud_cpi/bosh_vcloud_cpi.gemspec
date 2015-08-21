# -*- encoding: utf-8 -*-

require File.expand_path('../lib/cloud/vcloud/version.rb', __FILE__)
version = Bosh::Clouds::VCloud::VERSION
Gem::Specification.new do |s|
  s.name         = "bosh_vcloud_cpi"
  s.version      = version
  s.platform     = Gem::Platform::RUBY
  s.summary      = "BOSH vCloud CPI"
  s.description  = "BOSH vCloud CPI\n#{`git rev-parse HEAD`[0, 6]}"
  s.author       = "VMware"
  s.homepage     = 'https://github.com/cloudfoundry/bosh'
  s.license      = 'Apache 2.0'
  s.email        = "support@cloudfoundry.com"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  s.files        = `git ls-files -- lib/*`.split("\n") + %w(README.md)
  s.require_path = "lib"

  s.add_dependency "bosh_common"
  s.add_dependency "bosh_cpi"
  s.add_dependency "yajl-ruby", ">=0.8.2"
  s.add_dependency "builder","~>3.1.4"
  s.add_dependency "httpclient", "~>2.4.0"
  s.add_dependency "rest-client", "~>1.6.7"
  s.add_dependency "nokogiri", "~>1.6.6"
  s.add_dependency "membrane"
end
