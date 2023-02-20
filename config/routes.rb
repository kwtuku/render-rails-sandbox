Rails.application.routes.draw do
  root "render#index"
  resources :articles
end
