Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
    member do
      put "Like", to: "links#upvote"
      put "Dislike", to: "links#downvote"
    end
    resources :comments
  end
  root 'links#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
