class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all 
    render :index 
  end

  def show 
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

  def create
    @favorite = Favorite.create(
      class_name: params[:class_name],
      studio_name: params[:studio_name],
      instructor_name: params[:instructor_name]
    )
    render :show
  end

  def update
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.update(
      class_name: params[:class_name] || @favorite.class_name,
      instructor_name: params[:instructor_name] || @favorite.instructor_name,
      studio_name: params[:studio_name] || @favorite.studio_name,)
      render :show
  end

end
