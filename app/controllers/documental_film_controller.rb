class DocumentalFilmController < ApplicationController
  def index
    @documental_film = DocumentalFilm.all
  end

  def create
    @documental_film = DocumentalFilm.new(nombre: params["name"], synopsis: params["synopsis"], director: params["director"])

    if @documental_film.save
      redirect_to documental_film_path, notice: 'Se guardo la pelicula Documental exitosamente.'
    else
      redirect_to "/documental_film/new", notice: 'No se ha podido generar el guardado, intentalo nuevamente.'
    end
  end

  def new
  end
end
