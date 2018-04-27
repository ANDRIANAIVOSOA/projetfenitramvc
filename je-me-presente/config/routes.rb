Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/about/toi', to: 'static_pages#about_toi', as: 'moi'
  get '/about/ton_groupe', to: 'static_pages#about_ton_groupe', as: 'mon_groupe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
