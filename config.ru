#!/usr/bin/env ruby
require 'bundler'
Bundler.require

require File.join(File.dirname(__FILE__),'lib', 'request_controller')
require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestController.new
