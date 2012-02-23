class Ranking < Db1
  set_table_name :'resultados'
  set_primary_key :'dane'
  belongs_to :alumno, :foreign_key => "dane"

end