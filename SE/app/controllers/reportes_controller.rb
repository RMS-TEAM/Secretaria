class ReportesController < ApplicationController
  def index
      @colegios = Indicador.find(:all, :order => 'nombre ASC')
      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  def show
    @ambientes = Merge.find(params[:id])
    @nombre = Alumno.find(params[:id])
    @rendimientos = Indicador.find(params[:id])
    @info_col = Directoria.find(params[:id])
     respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @rendimientos }

     end

  end

end
