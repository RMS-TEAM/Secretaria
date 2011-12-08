class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all
    respond_to do |format|
      format.html
      format.xml {render :xml => @usuarios}
    end
  end
end
