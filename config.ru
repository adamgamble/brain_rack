#!/usr/bin/env ruby
require 'bundler'
Bundler.require

require File.join(File.dirname(__FILE__),'lib', 'brain_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

BrainRackApplication = BrainRack.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestController.new
