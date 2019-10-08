Rails.application.routes.draw do
  resources :songs do
    resources :notes, only: [:new, :create]
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
