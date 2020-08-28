Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/contact", to: 'pages#contact'
  get "/reservations", to: 'pages#reservations'

  resources :assassins do
    resources :reservations, only: :create
  end

  resources :reservations, only: :destroy do
  resources :reviews, only: :create
end

end
