Rails.application.routes.draw do
  root 'main#index'
  get 'reducingwaste' => 'pages#reducingwaste'
  get 'measuringimpact' => 'pages#measuringimpact'
  get 'inventory' => 'pages#inventory'
  get 'provider' => 'pages#provider'
  get 'additem' => 'items#additem'
  get 'checkout' => 'pages#checkout'
  get 'student' => 'pages#student'
  resources :items 
  resources :provider
  resources :appinventory 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
