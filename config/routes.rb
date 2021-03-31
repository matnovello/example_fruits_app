Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/fruits" => "fruits#index"
    get "/fruits/:id" => "fruits#show"
    post "/fruits" => "fruits#create"
    patch "/fruits/:id" => "fruits#update"
    delete "/fruits/:id" => "fruits#destroy"
  end
end
