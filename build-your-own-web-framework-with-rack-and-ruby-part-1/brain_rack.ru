# brain_rack.ru

require 'rack'
load 'request_handler.rb'

Rack::Handler::WEBrick.run(
  RequestHandler.new,
  Port: 9000
)
