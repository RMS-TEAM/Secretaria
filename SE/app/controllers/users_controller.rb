class UsersController < ApplicationController
  def index
        @users = User.all

  end

  def new
          @title = "Sing up"
          @user = User.new
  end

  def show
          @user = User.find(params[:id])
          @title = @user.nombre
  end

  def create
          @user = User.new(params[:user])
          if @user.save
                  sing_in @user
                  flash[:success] = "Wellcome to the best WebApp ever! " + @user.nombre
                  redirect_to user_path(@user)
          else
                  @title = "Sing up"
                  render 'new'
          end
  end

   def edit
  	@user = User.find(params[:id])
  	@title = "Edit User"
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
  		redirect_to @user
  	else
  		@title = "Edit User"
  		render 'edit'
  	end
  end
end