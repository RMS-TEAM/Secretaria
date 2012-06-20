class Db3 < ActiveRecord::Base
  #clusters base de datos
  establish_connection :db3
  self.abstract_class = true

end
