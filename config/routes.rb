Rails.application.routes.draw do
    resources :users
    get 'get_users/:id', to: 'users#get_users'
    
    resources :tweets
    root 'tweets#index'
    get 'get_tweets/:id', to: 'tweets#get_tweets'
    
    get 'top/main'
    post 'top/login'
    get 'top/logout'
    
    resources :likes
    root 'likes#index'
    get 'likes/index'
end
