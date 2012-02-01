class AdministratorsController < ApplicationController
  before_filter :admin_access, :only => [:index,:show,:new,:edit]

  def index
    @users = User.find(:all, :order => "admin DESC")
  end

  def show
  end

  def new
    @mateo = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mateo }
    end
  end

  def create
  @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'Company was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
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
