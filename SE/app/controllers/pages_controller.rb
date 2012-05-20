# coding: UTF-8
class PagesController < ApplicationController

  def home
  end

  def antecedentes
    @title = "Antecedentes"
  end

  def participantes
    @title = "Participantes"
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
end
