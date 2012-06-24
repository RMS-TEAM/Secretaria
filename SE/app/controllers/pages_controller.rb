# coding: UTF-8
class PagesController < ApplicationController
  caches_page :home

  def home
    @title = "Bienvenido"
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
