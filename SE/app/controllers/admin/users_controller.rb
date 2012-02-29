class Admin::UsersController < ApplicationController
  before_filter :admin_access
  before_filter :authenticate



    def index
      @users = User.find(:all, :order => "admin DESC")
    end

    def show
    end

    def new
      @user = User.new

      respond_to do |format|
        format.html # new.html.erb
      end
    end


    def create
      @user = User.new(params[:user])
      respond_to do |format|
        if @user.save
         # UserMailer.registration_confirmation(@user).deliver
          format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        else
          format.html { render :action => "new" }
        end
      end
    end

    def edit
    	@user = User.find(params[:id])
    	@title = "Edit User"
    end

  	def update
      @user = User.find(params[:id])

      if @user.admin.eql? false
        @user.update_attribute(:admin, !@user.admin)
        redirect_to admin_users_path
    	else
    		@title = "Edit User"
    		render 'edit'
    	end
    end


  def destroy
 		@user = User.find(params[:id])
 		@user.destroy
 		redirect_to(admin_users_path)
   end

    private

    def authenticate
    	deny_access unless signed_in?
    end


    def admin_access
      redirect_to (current_user) if (!current_user.admin?)
    end

end
