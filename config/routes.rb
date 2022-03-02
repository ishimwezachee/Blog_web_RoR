Rails.application.routes.draw do
  get "users/:user_id/posts" => "users#index"
  get 'users/:user_id/posts/id' => "users#show"
  get 'users/' => "posts#index"
  get 'users/:id' =>"posts#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
