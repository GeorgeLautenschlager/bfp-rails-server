require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Bfp
  class Application < Rails::Application

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end

    config.action_cable.allowed_request_origins = [ 
      %r{http://localhost:.*}
    ]

    ActiveModelSerializers.config.adapter = :json_api # Default: `:attributes`
  end
end
