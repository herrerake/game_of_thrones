Rails.application.routes.draw do
  resources :houses, only: [:index, :show, :new, :create, :edit, :destroy]
  resources :characters, only: [:index, :show, :new, :create, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
