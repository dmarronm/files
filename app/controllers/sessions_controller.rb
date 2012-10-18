class SessionsController < ApplicationController
  def new
  end

  def create
    cliente = Cliente.authenticate(params[:username],params[:password])
    if cliente
        session[:idcliente] = cliente.idcliente
        redirect_to categoria_url, #:notice => session[:idcliente]
    else
        flash.now.alert = "Usuario o password invalido"
        render "new"
    end
  end
  
  def destroy
    session[:idcliente] = nil
    redirect_to root_url, :notice => "Sesion terminada"
  end
end
