Rails.application.routes.draw do
  root "render#index"
  resources :articles, param: :slug
end
