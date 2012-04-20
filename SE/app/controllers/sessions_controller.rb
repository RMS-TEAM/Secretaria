class SessionsController < ApplicationController
  def new
          @title = "Ingresar"
  end

  def create
          user = User.authenticate(params[:session][:email],
                                                           params[:session][:password])
          if user.nil?
                  flash[:error] = "Error: email o contraseña invalidos"
                  @title = "Ingresar"
                  render 'new'
          else
                  sing_in user
                  redirect_to user
          end
  end

  def destroy
          sing_out
          redirect_to root_path
  end



end
