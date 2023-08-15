Rails.application.routes.draw do
  #get "images/Image"
  #get "suppliers/Supplier"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "/one_product", controller: "products", action: "one_product"
  #get "/products", controller: "products", action: "index"

  #for products
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  #for users
  post "/users" => "users#create"

  #for sessions
  post "/sessions" => "sessions#create"

  #for orders
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"

  #for carted_products
  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" => "carted_products#destroy"

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
end
