class ReportesController < ApplicationController

  before_filter :authenticate

  def index
      @colegios = Indicador.find(:all, :order => 'nombre ASC')
      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  def show
    @title = "Reporte"
    @ambientes = Merge.find(params[:id])
    @nombre = Alumno.find(params[:id])
    @rendimientos = Indicador.find(params[:id])
    @info_col = Directoria.find(params[:id])
    @totales = Ranking.find(params[:id])
     respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @rendimientos }

     end

  end


  def ranking
    @title = "Ranking"
    @ranking = Ranking.all(:order => "indicador DESC", :limit => 20)

  end

  private

    def authenticate
    	deny_access unless signed_in?
    end






end
