class ReportesController < ApplicationController

  before_filter :authenticate, :only => [:ranking , :show, :index]

  def index
      @colegios = Indicador.find(:all, :order => 'nombre ASC')
      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  def show
    @title = "Reporte"
    params[:option_select]
    @ambientes = Merge.find(params[:id])
    @rendimientos = Indicador.find(params[:id])
    @info_col = Directoria.find(params[:id])
    @totales = Ranking.find(params[:id])
     respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @rendimientos }

     end

  end

  def new
    id = params[:option_select]
    redirect_to "/reportes/#{id}"
  end

  def ranking
    @title = "Ranking"
    if current_user.admin?
      @ranking = Ranking.all(:order => "indicador DESC")
    else
      @ranking = Ranking.all(:order => "indicador DESC", :limit => 20)
    end

  end

  def download
    @title = "Reporte"
    @ambientes = Merge.find(params[:id])
    @rendimientos = Indicador.find(params[:id])
    @info_col = Directoria.find(params[:id])
    @totales = Ranking.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @rendimientos }
    end
  end

  private

    def authenticate
    	deny_access unless signed_in?
    end






end
