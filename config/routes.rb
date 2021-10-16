Rails.application.routes.draw do
    resources :users
    root 'users#index'
    get 'users/index'
    
    resources :tweets
    root 'tweets#index'
    get 'tweets/index'
end
