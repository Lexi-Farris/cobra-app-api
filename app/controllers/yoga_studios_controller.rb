class YogaStudiosController < ApplicationController


  def index
    # lat = 30.266666
    # long = -97.733330
    response = HTTP.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=yoga+studio&location=30.266666,-97.733330&radius=8000&key=#{Rails.application.credentials.google_search_api[:search_api_key]}")
    data = response.parse(:json)
    data = data["results"]
  
    render json: data.as_json 
    
  end

end
