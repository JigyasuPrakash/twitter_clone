Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :tweets do
    resources :comments, only: [:create]
    member do
      post 'retweet'
    end
  end

  get 'my_tweets', to: 'home#my_tweets', as: 'my_tweets'
end
