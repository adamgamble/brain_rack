# app/controllers/base_controller.rb
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'response')
#
class BaseController
  attr_reader :env

  def initialize(env)
    @env = env
  end
end
