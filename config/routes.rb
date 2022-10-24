Rails.application.routes.draw do

  post '/signup', to: "users#create", as: "new_user_registration"
  get '/signup', to: "users#new", as: "signup"

  delete "/article/:id", to: "articles#destroy", as: "article_destroy"
  patch "/article/:id", to: "articles#update"
  get "/article/:id/edit", to: "articles#edit", as: "article_edit"
  get "/article/:id", to: "articles#show", as: "article"
  get "/articles/new", to: "articles#new"
  post "/articles", to: "articles#create"
  get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
