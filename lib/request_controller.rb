require File.join(File.dirname(__FILE__), 'router.rb')
class RequestController
  def call(env)
    route = Router.router.route_for(env["PATH_INFO"], env["REQUEST_METHOD"])
    if route
      return [200, {}, [route.execute(env)]]
    else
      return [404, {}, []]
    end
  end
end
