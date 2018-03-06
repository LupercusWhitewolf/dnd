Rails.application.routes.draw do
  resources :character
    get 'character/:id' => 'character#show'
    get 'character/:id/edit' => 'character#edit'
    patch 'character/:id' => 'character#update'
    get "character" => "character#index"

end
