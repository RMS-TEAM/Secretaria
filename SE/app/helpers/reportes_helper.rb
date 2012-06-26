# coding = UTF-8
module ReportesHelper


  def current_ie_name
          nombre = @nombre..split(' ')

  end

  def bonus
    @left = 0
    @right = 0
    if @rendimientos.bonus_total11.nil?
      @left = 0
    else
      @left = @rendimientos.bonus_total11
    end


    if@rendimientos.bonus_total5.nil?
      @right = 0
    else
      @right = @rendimientos.bonus_total5
    end
    (@left.to_i + @right.to_i)/4
  end

  def total
    @totales.ambiente_escolar.round(2) + @totales.rendimiento.round(2) + @totales.progreso.round(2)
  end

  def totalbonus
    total + bonus
  end
  def grade_ambiente(n)
        if n <= 18.95
          "E"
          elsif n <= 19.64
            "D"
          elsif n <= 20.24
            "C"
          elsif n <= 20.80
            "B"
          else
            "A"
        end

  end

  def grade_rendimiento(n)
    if n <= 14.22
       "E"
        elsif n <= 15.88
          "D"
        elsif n <= 16.22
           "C"
        elsif n <= 16.60
           "B"
        else
           "A"
     end
  end

  def grade_progreso(n)
    if n <= 2.24
       "E"
        elsif n <= 6.38
           "D"
        elsif n <= 7.44
           "C"
        elsif n <= 8.70
           "B"
        else
           "A"
    end

  end
  def nombre_correc(nombre)
    nombre = nombre.gsub('Ñ','ñ')
    nombre = nombre.gsub('Ó','ó')
    nombre = nombre.gsub('Í','í')
    nombre = nombre.gsub('Á','á')
    nombre = nombre.gsub('É','é')
  end

  def nombre_comp(nombre)
    nombre = nombre.gsub('Inst Educ','IE')
    nombre = nombre.gsub('Ñ','ñ')
    nombre = nombre.gsub('Cent Educ', 'CE')


  end

  def grade_total(n)
    if n <= 34.23
        "E"
        elsif n <= 38.25
           "D"
        elsif n <= 40.88
           "C"
        elsif n <= 43.08
           "B"
        else
           "A"
    end
  end

  def verbose(word)
      if word.blank?
        "No Registra"
      else
        word
      end

  end
  def verbose_progreso(word)
    if word.blank?
      "No Registra"
    else
      "#{word.to_f.round(2)} "
    end
  end

  def verbosesim(word)
    if word.blank?
      "No Registra"
    else
      "#{word.to_f.round(2)}% "
    end

  end

  def verbosecal(word)
    if word.blank?
      "No Registra"
    else
      "#{word.to_f.round(2) * 100}%"
    end

  end


  def categoria(categoria)
    case categoria.to_i
      when 1 then
        "Muy inferior"
      when 2 then
        "Inferior"
      when 3 then
        "Bajo"
      when 4 then
        "Medio"
      when 5 then
        "Alto"
      when 6 then
        "Superior"
      when 7 then
        "Muy superior"
    else
       "No Registra"
    end
  end

  def calificacion_ciudad(arr)
    resul = Hash.new
    resul[:A],resul[:B],resul[:C],resul[:D],resul[:E] = 0,0,0,0,0
    arr.each {|indicador| if grade_total(indicador) == "A"
                           resul[:A] +=1
                          elsif grade_total(indicador)== "B"
                            resul[:B] +=1
                          elsif grade_total(indicador)== "C"
                            resul[:C] +=1
                          elsif grade_total(indicador)== "D"
                            resul[:D] +=1
                          elsif grade_total(indicador)== "E"
                            resul[:E] +=1
                          end

              }
    resul


  end


  def percent(number, top)
    ((number.to_f * 100 )/top).round(2)
  end




end
