class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from(ActionController::RoutingError) { render :text => 'This is a custom 404.' }
end
