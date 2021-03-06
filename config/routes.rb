Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'main#index'

  post '/country', to: 'countries#create'

  post '/person', to: 'person#create'

  get '/person/:name', to: 'person#index'
end
