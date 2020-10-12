Rails.application.routes.draw do
  apipie
  resources :companies
  resources :comply_advantage_news
  resources :comply_advantage_peps

  namespace :api do
    namespace :v1 do
      resources :companies
      resources :comply_advantage_news
      resources :comply_advantage_peps
      match '*unmatched', to: 'application#route_not_found', via: :all
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   match '*unmatched', to: 'application#route_not_found', via: :all
end
