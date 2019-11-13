Rails.application.routes.draw do

  root to: 'pages#home'
  get :search, controller: :main
  get '/results', to: 'dashboard#index', as: :results

  resources :songs do
    resources :notes, only: [:create, :index, :show]
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

