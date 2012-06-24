# coding: UTF-8
class PagesController < ApplicationController

  def home
    @title = "Bienvenido"
    expire_page :action => :home
  end

  def antecedentes
    @title = "Indicador"
  end

  def participantes
    @title = "Aliados"
  end

  def acerca
    @title = "Acerca De"
  end

  def administradores
    @title = "Administradores"
  end

  def fuentes
    @title = "Fuentes del Sistema"

  end

  def utilidad
    @title = "Utilidad del Sistema"
  end

end
