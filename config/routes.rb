Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :update]
  devise_for :teams
  get "scores", to: "welcome#scores"

  root to: "welcome#index"
end
