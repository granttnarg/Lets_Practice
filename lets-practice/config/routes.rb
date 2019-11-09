Rails.application.routes.draw do

  root to: 'pages#home'

  resources :songs do
    resources :notes, only: [:new, :create, :index, :show]
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
