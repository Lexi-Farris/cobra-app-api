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

#users | full CRUD abilities 

end
