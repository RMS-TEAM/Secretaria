class AdministratorsController < ApplicationController
  before_filter :admin_access, :only => [:index,:show,:new,:edit]

  def index
    @users = User.find(:all, :order => "admin DESC")
  end

  def show
  end

  def new
  end

  def edit
  	@user = User.find(params[:id])
  	@title = "Edit User"
  end

	

  private

  def admin_access
    redirect_to (current_user) if (!current_user.admin?)
  end

end
