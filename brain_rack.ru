#!/usr/bin/env ruby
require 'rack'
require File.join(File.dirname(__FILE__), 'request_controller')
require File.join(File.dirname(__FILE__), 'config')

#Controllers
require File.join(File.dirname(__FILE__), 'base_controller')
require File.join(File.dirname(__FILE__), 'custom')

Rack::Handler::WEBrick.run(
  RequestController.new,
  :Port => 9000
)
