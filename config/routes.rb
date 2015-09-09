RackApplication.router.config do
  get "/test", :to => "Custom#index"
  get /.*/, :to => "Custom#show"
end
