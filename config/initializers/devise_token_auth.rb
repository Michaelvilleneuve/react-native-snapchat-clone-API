DeviseTokenAuth.setup do |config|
  config.change_headers_on_each_request = true
  config.token_lifespan = 10.years
end
