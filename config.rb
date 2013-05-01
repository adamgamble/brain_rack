require File.join(File.dirname(__FILE__), 'router')

Router.config do
  get "/test", :to => "Custom#index"
  get /.*/, :to => "Custom#show"
end
