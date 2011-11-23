class DbAmbiente < ActiveRecord::Base
  establish_connection :dbAmbiente
  self.abstract_class = true
  # To change this template use File | Settings | File Templates.
end
