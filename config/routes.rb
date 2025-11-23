Rails.application.routes.draw do
  resources :projects
  get "pages/home"
  get '/pricing', to: 'pages#pricing'
  get '/privacy', to: 'pages#privacy'
  get '/terms', to: 'pages#terms'
  get '/about', to: 'pages#about'
  devise_for :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  #root "posts#index"
  root "pages#home"
end
