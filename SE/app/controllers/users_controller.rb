class UsersController < ApplicationController
   before_filter :authenticate, :only => [:edit, :update, :destroy, :new]
   before_filter :correct_user, :only => [:edit, :update]
   before_filter :admin_user, :only => :destroy
   before_filter :admin_access, :only => :index

  # GET /users
  def index
        @users = Usuario.all

  end

  # GET /users/new
  def new
          @title = "Sing up" #/users/new
          @user = User.new
  end

  # GET /users/1
  def show
          @user = User.find(params[:id]) #/users/1
          @title = @user.nombre
  end

  # POST /users
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
      redirect_to users_path
    elsif @user.update_attributes(params[:user])
       redirect_to users_path
  	else
  		@title = "Edit User"
  		render 'edit'
  	end
  end

  # DELETE /users/1
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

