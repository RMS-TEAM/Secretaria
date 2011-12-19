class UsersController < ApplicationController
   before_filter :authenticate, :only => [:edit, :update, :destroy, :new]
   before_filter :correct_user, :only => [:edit, :update]
   before_filter :admin_user, :only => :destroy
   before_filter :admin_access, :only => [:index]
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
                 # sing_in @user
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
  	if params[:nombre].blank? && params[:tipo] && admin?
      @user.update_attribute(:tipo => params[:tipo])
      redirect_to users_path
    elsif @user.update_attributes(params[:user])
       redirect_to users_path
  	else
  		@title = "Edit User"
  		render 'edit'
  	end
  end


  def destroy
  	User.find(params[:id]).destroy
  	flash[:success] = "User destroyed."
  	redirect_to users_path
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

