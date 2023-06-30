class PeliculaController < ApplicationController
  def index
    @pelicula = Pelicula.all
  end

  def create
    @pelicula = Pelicula.new(nombre: params["nombre"], synopsis: params["synopsis"], director: params["director"])

    if @pelicula.save
      redirect_to pelicula_path, notice: 'Se guardo la Pelicula exitosamente.'
    else
      redirect_to "/pelicula/new", notice: 'No se ha podido generar el guardado, intentalo nuevamente.'
    end
  end

  def new
  end
end
