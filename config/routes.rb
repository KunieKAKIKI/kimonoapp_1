Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  devise_for :users

  #追加　ここから
  resources :users, :only => [:index, :show]
  get 'list', to: :show, controller: 'users'

  resources :users do
    resources :items, only:[:index, :choicelist]
  end

  resources :users do
    resources :coordinates, only:[:index]
  end
  #ここまで

  root 'coordinates#index'

  resources :categories
  resources :items
  resources :coordinates

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
