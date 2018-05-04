class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :restrict_access

  # APP_KEY = '340a74c924045500d98970a7e65e1c7c'.freeze

  # def restrict_access #app token, It needs user token
  #   authenticate_or_request_with_http_token do |token, _options|
  #     token == APP_KEY
  #   end
  # end
end
