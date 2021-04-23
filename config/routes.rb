Rails.application.routes.draw do
    root to: "books#index"
    resources :books
    
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "/signin", to: "session#new"
    post "/signin", to: "session#create"
    get "/signout", to: "session#destroy"
    get "/users/edit", to: "users#edit", as: "edit_user"
    patch "/users", to: "users#update", as: "user"
    
    resources :balances
    #get "/balances", to: "balances#index"
    #post "/balances", to: "balances#create"
    #get "/balances/new", to: "balances#new", as: "new_balance"
    #get "/balances/:id/edit", to: "balances#edit", as: "edit_balance"
    #get "/balances/:id", to: "balances#show", as: "balance"
    #patch "balances/:id", to: "balances#update"
    #delete "/balances/:id", to: "balances#destroy"
end
