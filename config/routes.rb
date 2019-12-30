Rails.application.routes.draw do
  resources :ingredients, only: [:index]
  resources :smoothies, only: [:index, :show, :create]
  resources :smoothie_ingredients, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


