# coding = utf-8
class SessionsController < ApplicationController
  def new
          @title = "Ingresar"
  end

  def create
          user = User.authenticate(params[:session][:nickname],params[:session][:password])

          if user.nil?
              @title = "Ingresar"
              redirect_to('/signin', :alert => 'Email o contraseña invalidos')
          else
              sign_in user
              redirect_to user
          end
  end

  def destroy
          sign_out
          redirect_to root_path
  end

  def remember
      @user = User.new
  end

  def ruperto
      @user = User.new(params[:user])
      User.find_by_nickname
  end



end
