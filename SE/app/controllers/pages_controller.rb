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
end
