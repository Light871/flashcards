Rails.application.routes.draw do
  root 'cards#review'

  resources :cards do
    collection do
      get 'review'
    end
  end
end
