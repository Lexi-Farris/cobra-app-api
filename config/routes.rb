Rails.application.routes.draw do

#attendance 
get "/attendance" => "attendances#index"
get "/attendance/:id" => "attendances#show"

#favorites | full CRUD abilities 
get "/favorite" => "favorites#index"
get "/favorite/:id" => "favorites#show"
post "/favorite" => "favorites#create"
patch "favorite/:id" => "favorites#update"
delete "favorite/:id" => "favorites#destroy"

#users 
post "/users" => "users#create"
post "/sessions" => "sessions#create"
patch "/users/:id" => "users#update"

#yoga studios
get "/yoga" => "yoga_studios#index"
get "/yoga/:id" => "yoga_studios#show"


#saved studios
get "/saved" => "saved_studios#index"
post "/saved/:id" => "saved_studios#show"
end
