class Merge < Db1
  set_table_name :'merge'
  has_many :alumnos
  set_primary_key :'dane'

end