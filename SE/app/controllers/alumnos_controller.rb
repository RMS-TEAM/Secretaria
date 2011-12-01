class AlumnosController < ApplicationController


  def index
    @colegios = Alumno.find(:all, :group => "colegio")


    respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end


end

