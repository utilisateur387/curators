class ArtworksController < ApplicationController
  before_action :set_artwork, only: [ :show ]
  def index
    # raise
    @user = User.find(params[:user_id])
    @number_of_collections = @user.collections.count
    # @number_of_artworks = @collection.artworks.count
    @artworks = @user.artworks
    # raise
  end

  def show
  end

  def new
    @artwork = Artwork.new
    @artists = Artist.order(:name)
    @collections = current_user.collections
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
    
  end
  

  private

  def artwork_params
    params.require(:artwork).permit(:title, :photo, :artist_id, :completion_year, :description, :notes, :collection_id)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end
