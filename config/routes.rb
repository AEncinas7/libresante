Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'pages#home'
    resources :products, only: [:index]
    resources :filters, only: [:show]
  end
end
