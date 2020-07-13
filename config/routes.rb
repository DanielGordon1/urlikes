Rails.application.routes.draw do
  root to: "links#index"
  devise_for :nerds, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
end
