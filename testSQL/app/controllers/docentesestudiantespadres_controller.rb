class DocentesestudiantespadresController < ApplicationController
  #use_google_charts


  def index
    @nepe = []
    @suma = 0
    @docentesestudiantespadres = Docentesestudiantespadre.all
    @docentesestudiantespadres.each do |result|
      @suma = result.compro_Total + @suma

    end
    final = @docentesestudiantespadres.count
    @nepe << @suma/final
    respond_to do |format|
      format.html
      format.xml {render :xml => @docentesestudiantespadres}
    end
  end

  def bar_chart
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Year')
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')
    data_table.add_rows(4)
    data_table.set_cell(0, 0, '2004')
    data_table.set_cell(0, 1, 1000)
    data_table.set_cell(0, 2, 400)
    data_table.set_cell(1, 0, '2005')
    data_table.set_cell(1, 1, 1170)
    data_table.set_cell(1, 2, 460)
    data_table.set_cell(2, 0, '2006')
    data_table.set_cell(2, 1, 660)
    data_table.set_cell(2, 2, 1120)
    data_table.set_cell(3, 0, '2007')
    data_table.set_cell(3, 1, 1030)
    data_table.set_cell(3, 2, 540)

    @opts   = { :width => 400, :height => 240, :title => 'Company Performance', vAxis: {title: 'Year', titleTextStyle: {color: 'red'}} }
    @chart = GoogleVisualr::Interactive::BarChart.new(data_table, @opts)

    respond_to do |format|
      format.html
      format.xml {render :xml => @opts}
      format.pdf {render :layout => false}
    end

  end

  def example1
    @chart = GoogleLineChart.new :width => 300, :height => 200

  end
end
