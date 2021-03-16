class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
    @artworks = @favorites.map { |favorite| favorite.artwork }
  end

  def create
    favorite = Favorite.new(favorite_params)
    favorite.user = current_user
    if favorite.save!
      redirect_to artwork_path(params[:artwork_id])
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def favorite_params
    params.permit(:artwork_id)
  end
end
