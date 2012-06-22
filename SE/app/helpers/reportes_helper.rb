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

  def grade_total(n)
    if n <= 42.81
        "E"
        elsif n <= 43.24
           "D"
        elsif n <= 45.08
           "C"
        elsif n <= 46.86
           "B"
        else
           "A"
    end
  end

  def verbose(word)
      if word.blank?
        "No Registra"
      else
        "#{word}"
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
    case categoria
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

  def pdf_url
    a = "http://ec2-107-22-95-239.compute-1.amazonaws.com/download/#{@rendimientos.dane}&-n&--filename=#{@rendimientos.nombre}"
    b = "http://pdfmyurl.com/?url=#{a}"
  end
  #Generar el pdf para el ranking (cambiar privilefios de admi a la pag)
  def pdf_url1
      a = "http://ec2-107-22-95-239.compute-1.amazonaws.com/download/#{@rendimientos.dane}&-n&--filename=#{@rendimientos.nombre}"
      b = "http://pdfmyurl.com/?url=#{a}"
    end

  def percent(number, top)
    ((number.to_f * 100 )/top).round(2)
  end




end
