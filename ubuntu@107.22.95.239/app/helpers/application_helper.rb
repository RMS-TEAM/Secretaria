# coding: UTF-8

module ApplicationHelper

  def title
		base_title = "SIMCIE-Medellín"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
  end

  def ambiente(variable)
       if @ambiente.variable.eql? ""
          "No Registra"
       else
          resul
       end

  end
end
