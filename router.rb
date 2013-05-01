require File.join(File.dirname(__FILE__), 'route')

class Router
  attr_reader :routes

  def initialize
    @routes = Hash.new { |hash, key| hash[key] = [] }
  end

  def self.config &block
    Router.router.instance_eval &block
  end

  def self.router
    $router ||= Router.new
  end

  def get path, options = {}
    @routes[:get] << [path, parse_to(options[:to])]
  end

  def route_for path, method
    method = method.downcase.to_sym
    route_array = routes[method].detect do |route|
      case route.first
      when String
        path == route.first
      when Regexp
        path =~ route.first
      end
    end
    return nil unless route_array
    Route.new(route_array)
  end

  private
  def parse_to to_string
    klass, method = to_string.split("#")
    {:klass => klass, :method => method}
  end
end
