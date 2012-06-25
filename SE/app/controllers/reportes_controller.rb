# encoding = utf-8
class ReportesController < ApplicationController

  before_filter :authenticate, :only => [:ranking , :show, :index]

  def index
      @title = "Reportes"
      colegios = Indicador.find(:all, :order => 'nombre ASC')
      # trae los colegios para desplegarlos es la lista, eliminando los 11 colegios no incluidos
      @colegios = colegios.delete_if{|x| x.dane ==  105001005380 or
                                          x.dane == 305001022640 or
                                          x.dane == 105001025771 or
                                          x.dane == 105001025763 or
                                          x.dane == 105001026131 or
                                          x.dane == 105001025992 or
                                          x.dane == 105001025798 or
                                          x.dane == 105001025984 or
                                          x.dane == 105001001881 or
                                          x.dane == 105001026000 or
                                          x.dane == 105001019143
                                    }


      respond_to do |format|
      format.html              #/alumnos/index
      format.json {render :json => @colegios}
    end
  end

  def show
    @title = "Reporte Individual"
    params[:option_select]
    @ambientes = Merge.find(params[:id])
    @rendimientos = Indicador.find(params[:id])
    @info_col = Directoria.find(params[:id])
    #@totales = Ranking.find(params[:id])
    @multivariados = Multivariado.find(params[:id])
    @multivariadob = Multivariadob.find(params[:id])
    @cluster = Cluster.find(params[:id])
    @varcolegio = Varcolegio.find(params[:id])
    @pares = Cluster.find_all_by_Cluster(@cluster.Cluster)
    @bonus5 = Bonus5.find(params[:id])
    @bonus11 = Bonus11.find(params[:id])
    @taprob = Taprob.find(params[:id])
    @consolidado = []
    Multivariado.all.each {|resul| @consolidado << resul.IndicadorEducacion.to_f}
    respond_to do |format|
       format.html # show.html.erb
       format.json  { render :json => @rendimientos }

     end

  end

  def new
    if params[:option_select].blank?
      redirect_to reportes_path, :alert => "Debe seleccionar una institución educativa"
    else
      id = params[:option_select]
      redirect_to "/reportes/#{id}"
    end
  end

  def ranking
    @title = "Ranking"
    if current_user.admin?
      @ranking = Ranking.all(:order => "indicador DESC")
    else
      @ranking = Ranking.all(:order => "indicador DESC", :limit => 20)
    end

  end

  private

  def authenticate
   	deny_access unless signed_in?
  end






end
