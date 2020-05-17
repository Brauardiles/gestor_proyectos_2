Rails.application.routes.draw do
  # get 'proyects/index'
  # get 'proyects/new'
  # get 'proyects/create'
  # get 'proyects/show'

  resources :proyects
  root 'proyects#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
