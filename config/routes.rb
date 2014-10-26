Rails.application.routes.draw do
  root to: "notes#index"

  resources :notes, only: [:index, :show]
  
end
