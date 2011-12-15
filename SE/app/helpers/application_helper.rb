module ApplicationHelper
def hola
    @trivi = Alumno.all
end

  def title
		base_title = "SE"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
