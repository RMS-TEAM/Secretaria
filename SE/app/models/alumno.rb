class Alumno < Db1

  set_table_name :'estudiantes inv'
  belongs_to :final
  set_primary_key :'dane'
end
