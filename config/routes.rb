Rails.application.routes.draw do
  resources :companies
  resources :comply_advantage_news
  resources :comply_advantage_peps

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
