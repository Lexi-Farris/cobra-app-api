Rails.application.routes.draw do

#attendance 
get "/attendance" => "attendances#index"
get "/attendance/:id" => "attendances#show"

#favorites | full CRUD abilities 
get "/favorite" => "favorites#index"
get "/favorite/:id" => "favorites#show"


#users | full CRUD abilities 

end
