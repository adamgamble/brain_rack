#!/usr/bin/env ruby
require 'bundler'
Bundler.setup

require File.join(File.dirname(__FILE__),'lib', 'brain_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

RackApplication = RackBrain.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestController.new
