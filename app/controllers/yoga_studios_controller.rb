class YogaStudiosController < ApplicationController


  def index
    #Check for current user and IF user exists, move along to check for their latitude, otherwise just use default value
    lat = params[:lat]|| (current_user && current_user.latitude) || 30.508255
    long = params[:lng] || (current_user && current_user.longitude) || -97.678894
    response = HTTP.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=yoga+studio&location=#{lat},#{long}&radius=8000&key=#{Rails.application.credentials.google_search_api[:search_api_key]}")
    data = response.parse(:json)
    data = data["results"]
    render json: data.as_json 
  end

  def show
    id = params[:id]
    response = HTTP.get("https://maps.googleapis.com/maps/api/place/details/json?place_id=#{id}&fields=name,formatted_address,website,place_id&key=#{Rails.application.credentials.google_search_api[:search_api_key]}")
    @yoga_studio = response.parse(:json)
    render :show
  end

end
