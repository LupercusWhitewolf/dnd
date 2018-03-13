Rails.application.routes.draw do
  root 'character#index'
  resources :character, :controller => 'character'
  resources :characters, :controller => 'character'

end
