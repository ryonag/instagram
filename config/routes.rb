Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :photos, only: [:new, :create]
  post 'uploader/upload'
end
