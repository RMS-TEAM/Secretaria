class SessionsController < ApplicationController
  def new
          @title = "Sing in"
  end

  def create
          user = User.authenticate(params[:session][:email],
                                                           params[:session][:password])
          if user.nil?
                  flash.now[:error] = "Error! email/password combination"
                  @title = "Sing in"
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
