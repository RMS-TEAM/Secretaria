class AdministratorsController < ApplicationController
  before_filter :admin_access, :only => [:index,:show,:new,:edit]

  def index
    @users = User.find(:all, :order => "admin DESC")
  end

  def show
  end

  def new
    @administrator = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @administrator }
    end
  end

  def create
    @administrator = User.new(params[:administrator])

    respond_to do |format|
      if @administrator.save
        format.html { redirect_to(@administrator, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @administrator, :status => :created, :location => @administrator }
      else
        format.html { redirect_to "/new"}
        format.xml  { render :xml => @administrator.errors, :status => :unprocessable_entity }
      end
    end
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
