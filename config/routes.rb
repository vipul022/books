Rails.application.routes.draw do
    get "/", to: "books#index"
    get "/show", to: "books#show"
    get "/show/:id" , to: "books#show"
    post "/create", to: "books#create"
    patch "/update", to: "books#update"
    patch "/update/:id", to:"books#update"
    delete "/destroy", to: "books#destroy"
    delete "/destroy/:id", to: "books#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
