# lib/brain_rack.rb
require File.join(File.dirname(__FILE__), 'router')
#
class BrainRack
  attr_reader :router

  def initialize
    @router = Router.new
  end
end
