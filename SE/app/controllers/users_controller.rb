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

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else

        format.html { render :controller => "administrators", :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to(administrators_path)
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

