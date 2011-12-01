class Alumno < Db1

  set_table_name :'909-alumnos'
  def self.search(search)
  if search
    where('colegio LIKE ?', "%#{search}%")
  else
    scoped
  end
end

end
