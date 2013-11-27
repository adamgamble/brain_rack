class RequestController
  def call(env)
    route = BrainRackApplication.router.route_for(env["PATH_INFO"], env["REQUEST_METHOD"])
    if route
      response = route.execute(env)
      return response.rack_response
    else
      return [404, {}, []]
    end
  end
end
