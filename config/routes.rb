Rails.application.routes.draw do
  root 'home#index'

  resources :cards do
    collection do
      get 'review'
    end
  end
end
