# config.ru
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
require 'bundler'
Bundler.require

a = %w(brain_rack request_handler)
a.each do |f|
  require File.join(File.dirname(__FILE__), 'lib', f.to_s)
end

BrainRackApplication = BrainRack.new

# Load the routes
require File.join(File.dirname(__FILE__), 'config', 'routes')

Rack::Handler::Thin.run(
  RequestHandler.new,
  Port: 9000
)
