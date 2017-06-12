Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "books#index"
  namespace :api do
    namespace :v1 do
      get "/books" => "books#index"
      get "/books/:id" => "books#show"

      post "books/new" => "books#create"
      patch "books/:id" => "books#update"
      delete "books/:id" => "books#destroy"
    end

    namespace :v2 do
      get "/books" => "books#index"
      get "/books/:id" => "books#show"

      post "books/new" => "books#create"
      patch "books/:id" => "books#update"
      delete "books/:id" => "books#destroy"
    end
  end
end
