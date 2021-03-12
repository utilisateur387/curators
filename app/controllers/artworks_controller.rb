require "open-uri"

class ArtworksController < ApplicationController
  before_action :set_artwork, only: [ :show ]
  def index
    @user = User.find(params[:user_id])
    @number_of_collections = @user.collections.count
    @artworks = @user.artworks
  end

  def show
  end

  def new
    @user = current_user
    @artwork = Artwork.new
    @artists = Artist.order(:name)
    @collections = current_user.collections
    @my_collection = @collections.first
    # raise
  end

  def create
    if artwork_params["img_url"]
      @artwork = Artwork.new(wikiart_artwork_params)
      img_url = artwork_params["img_url"]
      file = URI.open(img_url)
      @artwork.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      @artwork.collection = Collection.find(3)
      # raise
      if @artwork.save
      # raise
       redirect_to artwork_path(@artwork)
      else
        raise
      end
    else
      @artwork = Artwork.new(artwork_params)
      if @artwork.save
        redirect_to artwork_path(@artwork)
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
    @artwork = Artwork.new
    @artists = Artist.order(:name)
    @collections = current_user.collections
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :photo, :artist_id, :completion_year, :description, :notes, :collection_id, :img_url)
  end

  def wikiart_artwork_params
    params.require(:artwork).permit(:title, :photo, :artist_id, :completion_year, :description, :notes, :collection_id)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end
