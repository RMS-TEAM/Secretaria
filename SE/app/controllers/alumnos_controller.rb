class AlumnosController < ApplicationController


  def index
    @colegios = Alumno.find(:all, :group => "colegio")

      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  # GET /alumnos/1
  # GET /alimnos/1.json
  def show
    @colegio = Alumno.where("coddane = ?",params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @colegio }
    end
  end

end

