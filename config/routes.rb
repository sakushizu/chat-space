Rails.application.routes.draw do
  devise_for :users
  resources :message, only: :show
end
