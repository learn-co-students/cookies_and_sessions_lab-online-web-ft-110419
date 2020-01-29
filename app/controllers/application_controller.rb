class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def cart
    session[:cart] ||= []
  end
end
