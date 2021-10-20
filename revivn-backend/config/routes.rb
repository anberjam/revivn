Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/requests", to: "requests#index"
  get "/requests/:id", to: "requests#show"
  post "/requests", to: "requests#create"
  delete "/requests/:id", to: "requests#destroy"
  patch "/requests/:id", to: "requests#update"

get "/directors", to: "directors#index"
get "/directors/:id", to: "directors#show"
post "/directors", to: "directors#create"
delete "/directors/:id", to: "directors#destroy"
patch "/directors/:id", to: "directors#update"



end
