$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'janus_admin_monitor_token/info'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.version = if ENV['TRAVIS'] && !ENV['TRAVIS_BRANCH'].eql?('master')
                "#{JanusAdminMonitorToken::VERSION}-#{ENV['TRAVIS_BUILD_NUMBER']}"
              else
                JanusAdminMonitorToken::VERSION
              end
  s.name        = 'janus_admin_monitor_token'
  s.email       = ['jeremy.vaillant@dazzl.tv']

  s.summary     = JanusAdminMonitorToken::SUMMARY
  s.description = JanusAdminMonitorToken::DESCRIPTION

  s.homepage    = JanusAdminMonitorToken::HOMEPAGE
  s.license     = 'MIT'

  s.author      = 'VAILLANT Jeremy'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'rspec', '~> 3.5'

  s.add_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
  s.add_dependency 'ruby_rabbitmq_janus', '~> 2.1.1'
  s.add_dependency 'haml', '~> 4.0', '>= 4.0.7'
  s.add_dependency 'haml-rails', '~> 0.9.0'
end
