Rails.application.routes.draw do
  devise_for :users
  resources :links do
    member do
      put "Like", to: "links#upvote"
      put "Dislike", to: "links#downvote"
    end
    resources :comments, only: [:create, :destroy]
  end
  root 'links#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
