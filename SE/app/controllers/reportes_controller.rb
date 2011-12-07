class ReportesController < ApplicationController
  def index
      @colegios = Alumno.find(:all, :group => "colegio")

      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  def show
    @colegio = Final.where("coddane = ?",params[:id])
    @nombre = Alumno.find(params[:id])
    @rendimientos = Rendimiento.find(params[:id])
     respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @colegio }
     end

  end

end
