Rails.application.routes.draw do
  get 'documental_film/index'
  get 'documental_film/index'
  get 'documental_film/create'
  get 'documental_film/new'
  get 'serie_tv/index'
  get 'serie_tv/create'
  get 'serie_tv/new'
  get 'pelicula/index'
  get 'pelicula/create'
  get 'pelicula/new'

  get 'documental_film', to: 'documental_film#index'
  get 'serie_tv', to: 'serie_tv#index'
  get 'pelicula', to: 'pelicula#index'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
root "welcome#index"
end
