class Admin::UsersController < ApplicationController
  before_filter :admin_access, :only => [:index,:show,:new,:edit]

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
        redirect_to administrators_path
    	else
    		@title = "Edit User"
    		render 'edit'
    	end
    end

    private

    def admin_access
      redirect_to (current_user) if (!current_user.admin?)
    end

end
