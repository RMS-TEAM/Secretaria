class AlumnosController < ApplicationController
  def index
    @usuarios = Alumno.all
    respond_to do |format|
      format.html
      format.xml {render :xml => @usuarios}
    end
  end
end
