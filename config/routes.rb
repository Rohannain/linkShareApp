Rails.application.routes.draw do
  devise_for :users

  resources :links do
    member do
      put 'like' => 'links#like'
      put 'dislike' => 'links#dislike'
    end
  end
  
  root 'links#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
end
