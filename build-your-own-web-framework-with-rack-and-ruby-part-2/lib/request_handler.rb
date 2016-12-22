# lib/request_handler.rb #
class RequestHandler
  def call(env)
    p route = BrainRackApplication.router.route_for(env)
    return [404, {}, ['Sorry! 404 error bad route']] unless route
    response = route.execute(env)
    response.rack_response
  end
end
