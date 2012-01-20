class UsersController < ApplicationController
   before_filter :authenticate, :only => [:edit, :update]
   before_filter :correct_user, :only => [:edit, :update]
   #before_filter :admin_user, :only => :destroy
   before_filter :admin_access, :only => :index

  # GET /users/1
  def show
          @user = User.find(params[:id]) #/users/1
          @title = @user.nombre
  end

  # GET /companies/1/edit
   def edit
  	@user = User.find(params[:id])
  	@title = "Edit User"
   end
   #PUT /users/1
   def update
    @user = User.find(params[:id])

    if params[:nombre].blank? && params[:tipo] && admin?
      @user.update_attribute(:admin => params[:admin])
      redirect_to user_path
    elsif @user.update_attributes(params[:user])
       redirect_to root_path
  	else
  		@title = "Edit User"
  		render 'edit'
  	end
  end

  private

  def authenticate
  	deny_access unless signed_in?
  end

  def correct_user
  	@user = User.find(params[:id])
  	redirect_to(current_user) unless current_user?(@user)
  end

  def admin_user
  	user = User.find(params[:id])
  	flash[:error] = "No te puedes borrar a ti mismo"
  	redirect_to(users_path) if (!current_user.admin? || current_user?(user))
  end

  def admin_access
    redirect_to (current_user) if (!current_user.admin?)
  end


end

