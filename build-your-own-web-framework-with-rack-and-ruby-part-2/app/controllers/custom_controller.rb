# app/controllers/custom_controller.rb
class CustomController < BaseController
  def index
    Response.new.tap do |response|
      response.body = 'Hello World'
      response.status_code = 200
    end
  end

  def show
    Response.new.tap do |response|
      response.body = 'Catchall Route'
      response.status_code = 200
    end
  end
end
