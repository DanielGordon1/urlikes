Rails.application.routes.draw do
  root to: "links#index"
  devise_for :nerds, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  resources :links, only: [:create, :destroy] do
    resources :link_likes, only: :create
  end
  resources :link_likes, only: :destroy
end
