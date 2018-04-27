Rails.application.routes.draw do
  get '/', to: 'static_pages#home', as: 'home'
  get '/new(/:erreur)', to: 'users#new', as: 'creer'
  post '/create', to: 'users#create'
  get '/users(/:id_user)', to: 'users#show'
  get '/erreur', to: 'users#erreur'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
