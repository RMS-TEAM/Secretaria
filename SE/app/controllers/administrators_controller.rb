class AdministratorsController < ApplicationController
  before_filter :admin_access, :only => [:index,:show,:new,:edit]

  def index
    @users = User.all

  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def admin_access
    redirect_to (current_user) if (!current_user.admin?)
  end



end
