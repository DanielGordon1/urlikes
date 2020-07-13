Rails.application.routes.draw do
  devise_for :nerds
  root to: "links#index"
end
