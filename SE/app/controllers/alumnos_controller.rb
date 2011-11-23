class AlumnosController < ApplicationController
  def index
    @colegios = Alumno.find(:all, :select => 'DISTINCT colegio')
	
   
    respond_to do |format|
      format.html
      format.xml {render :xml => @colegios}
    end
  end
end
