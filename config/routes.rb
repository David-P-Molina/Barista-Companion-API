Rails.application.routes.draw do
  resources :recipes
  resources :coffee_beans
  resources :roasters
  resources :brew_methods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
