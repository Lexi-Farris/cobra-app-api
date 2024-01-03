class YogaStudiosController < ApplicationController


  def index
    lat = 30.266666
    long = -97.733330
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
