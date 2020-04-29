Rails.application.routes.draw do
  root 'main#index'
  get 'reducingwaste' => 'pages#reducingwaste'
  resources :main
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
