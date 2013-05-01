class Route
  attr_accessor :klass_name, :path, :instance_method
  def initialize route_array
    @path            = route_array.first
    @klass_name      = route_array.last[:klass]
    @instance_method = route_array.last[:method]
  end

  def klass
    Module.const_get(klass_name)
  end

  def execute(env)
    klass.new(env).send(instance_method.to_sym)
  end
end
