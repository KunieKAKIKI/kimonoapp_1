Rails.application.routes.draw do

  devise_for :users
  root 'coordinates#index'

  resources :categories
  resources :items
  resources :coordinates

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
