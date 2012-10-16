class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_cliente
  
  private
  def current_cliente
    @current_cliente ||= Cliente.find(session[:idcliente]) if session[:idcliente]
  end
end
