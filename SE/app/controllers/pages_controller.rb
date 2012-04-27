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
  def sisas
    # coding: UTF-8
    @usuarios = Hash.new
    usuario = Directoria.all(:order => "nombre DESC")
    usuario.each do |user|
     nick = user.nombre.downcase
     nick.sub!('inst educ','')
     nick.sub!('instituciÓn educativa','')
     nick.sub!('cent educ', ' ')
     nick.gsub!('Ñ','n')
     nick.gsub!('Ó','o')
     nick.sub!('lic ','')
     nick.sub!('inst tec ','')
     nick.sub!('inst ','')
     nick.sub!(/(\s[y]\s)|(\s\W\s)/,'')
     nick.sub!(/^(\col)/,'')
     nick.sub!(/^(\preesc)/,'')
     nick.gsub!(/\s/,'')




     @usuarios[user.nombre]= nick.slice(0..5)+(rand(70)+10+rand(9)).to_s
    end
    @usuarios
  end
end
