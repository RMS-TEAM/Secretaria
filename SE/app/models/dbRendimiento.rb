class DbRendimiento < ActiveRecord::Base
  establish_connection :dbRendimiento
  self.abstract_class = true
  # To change this template use File | Settings | File Templates.
  #<%= image_tag("explora.png", :alt => "explora", :width => "340px", :height => "400px") %>
end
