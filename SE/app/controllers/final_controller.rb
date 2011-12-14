class FinalController < ApplicationController


   def index
     @colegios = Final.first
      @colegios1 = Final.first.alumnos
       respond_to do |format|
       format.html              #/alumnos/index
       format.json {render :json => @colegios}
     end
   end

   # GET /final/1
   # GET /final/1.json
   def show
     @colegio = Final.where("coddane = ?",params[:id])

     respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @colegio }
     end
   end

 end



