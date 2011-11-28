class RendimientosController < ApplicationController


	def index
	   @colegios = Rendimiento.all
    	    respond_to do |format|
   	    	format.html
      	    	format.json {render :json => @colegios}
    	    end
  	end
end
