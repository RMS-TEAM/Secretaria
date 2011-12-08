class Db2 < ActiveRecord::Base
  #rendimiento base de datos
  establish_connection :db2
  self.abstract_class = true

end
