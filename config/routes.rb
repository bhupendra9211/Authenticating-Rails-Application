Rails.application.routes.draw do
  root "home#index"
  # devise_for :admin_users
  # devise_for :admin_users, path_names: {
  #   sign_in: "login"
  # }
  # devise_for :admin_users, controllers: {
  #   passwords: "admin_users/passwords"
  # }

  devise_for :admin_users, path_names: {
    sign_in: "login"
  }, controllers: {
    passwords: "admin_users/passwords"
  }

  # get 'custom_password_sent', to: 'static_pages#password_sent', as: :custom_password_sent_view

  # get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
