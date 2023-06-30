class SerieTvController < ApplicationController
  def index
    @serie_tv = SerieTv.all
  end

  def create
    @serie_tv = SerieTv.new(nombre: params["nombre"], synopsis: params["synopsis"], director: params["director"])

    if @serie_tv.save
      redirect_to serie_tv_path, notice: 'Se guardo la Pelicula exitosamente.'
    else
      redirect_to "/serie_tv/new", notice: 'No se ha podido generar el guardado, intentalo nuevamente.'
    end
  end

  def new
  end
end
