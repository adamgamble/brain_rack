
class RequestHandler
  def call(_env)
    [200, {}, ['Hello World']]
  end
end
