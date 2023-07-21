Rails.application.routes.draw do
  get "images/Image"
  get "suppliers/Supplier"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "/one_product", controller: "products", action: "one_product"
  get "/products", controller: "products", action: "index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  #for suppliers
  get "/suppliers", controller: "suppliers", action: "index"

  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"

  #for imagess
  get "/images", controller: "images", action: "index"

  get "/images/:id" => "images#show"

  post "/images" => "images#create"

  patch "/images/:id" => "images#update"

  delete "/images/:id" => "images#destroy"

  #for users

  post "/users" => "users#create"

  #for sessions

  post "/sessions" => "sessions#create"

  #for orders

  post "/orders" => "orders#create"

  get "/orders" => "orders#index"

  get "/orders/:id" => "orders#show"
end
