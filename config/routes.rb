Rails.application.routes.draw do

  namespace :api do 
    resources :players, only: [:index, :create]
    resources :characters, only: [:create]
  end

end
