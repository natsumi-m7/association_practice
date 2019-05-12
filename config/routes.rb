Rails.application.routes.draw do

  root 'tweets#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do # 追加
  	resources :favorites, only:[:create,:destroy]
  end
  resources :users
end
