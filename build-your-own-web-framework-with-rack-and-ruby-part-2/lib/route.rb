# /lib/route.rb #
class Route
  attr_accessor :klass_name, :path, :instance_method
  def initialize(route_array)
    p route_array
    @path            = route_array.first
    @klass_name      = route_array.last[:klass] + '_controller'
    @instance_method = route_array.last[:method]
    handle_requires
  end

  def handle_requires
    require File.expand_path('../../app/controllers/base_controller', __FILE__)
    require File.expand_path("../../app/controllers/#{@klass_name.downcase}", __FILE__)
  end

  def klass
    class_name = @klass_name.split('_').map(&:capitalize).join
    Module.const_get(class_name)
  end

  def execute(env)
    klass.new(env).send(instance_method.to_sym)
  end
end
