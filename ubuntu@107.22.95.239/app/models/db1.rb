class Db1 < ActiveRecord::Base
  #ambiente base de datos
  establish_connection :db1
  self.abstract_class = true

end
