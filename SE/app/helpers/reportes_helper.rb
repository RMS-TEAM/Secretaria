module ReportesHelper


  def current_ie_name
          nombre = @nombre..split(' ')

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
        word
      end

  end

  def pdf_url
    a = "ec2-107-22-95-239.compute-1.amazonaws.com/download/#{@rendimientos.dane}"
  end




end
