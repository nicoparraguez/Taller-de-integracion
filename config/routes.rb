Rails.application.routes.draw do

  get 'app/peliculas'

  get 'app/personajes'

  get 'app/planetas'

  get 'app/naves'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'app#index'
end
