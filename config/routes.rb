Rails.application.routes.draw do
  root to: 'pages#home'
  resources :products, only: [:index]
  resources :filters, only: [:show]
end
