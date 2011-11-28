class Db2 < ActiveRecord::Base
  establish_connection :db2
  self.abstract_class = true

end
