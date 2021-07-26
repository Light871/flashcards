Rails.application.routes.draw do
  root 'card_reviews#new'

  resources :cards do
    resources :card_reviews, only: [:new, :create]
  end
end
