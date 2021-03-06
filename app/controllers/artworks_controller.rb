require "open-uri"

class ArtworksController < ApplicationController
  before_action :set_artwork, only: [ :show, :edit, :update, :destroy, :show ]

  def index
    @user = User.find(params[:user_id])
    @number_of_collections = @user.collections.count
    @artworks = @user.artworks
  end

  def show
    @favorite = Favorite.new
    @artwork_favorite = @artwork.favorites.where(user: current_user)
  end

  def new
    @user = current_user
    @artwork = Artwork.new
    @artists = Artist.order(:name)
    @collections = current_user.collections
    @my_collection = @collections.first
  end

  def create
    # Create artwork from the database search
    if artwork_params["tmp_artist_name"]
      @artwork = Artwork.new(wikiart_artwork_params)
      img_url = @artwork.tmp_image_url
      file = URI.open(URI.escape(img_url))
      @artwork.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

      @collection = current_user.collections.last
      @artwork.collection = @collection

      artist = Artist.find_or_create_by(name: @artwork.tmp_artist_name) # here
      @artwork.artist = artist
      if @artwork.save!
        # redirect_to artwork_path(@artwork)
        redirect_to artwork_path(@artwork)
        flash[:notification] = "Added to #{@artwork.collection.name}"
      else
        render :search
      end

    else
      # Build a new artwork either with cropped image or not
      build_new_artwork
      artist = Artist.find_or_create_by(name: params[:artist].split("/").join(" "))
      @artwork.artist = artist
      if @artwork.save
        redirect_to artwork_path(@artwork)
        flash[:notification] = "Added to #{@artwork.collection.name}"
      else
        @user = current_user
        @artists = Artist.order(:name)
        @collections = current_user.collections
        @my_collection = @collections.first
        render :new
      end
    end
  end

  def edit
    @collections = current_user.collections
    @artists = Artist.order(:name)
  end

  def update
    @artwork.update(artwork_params)
    artist = Artist.find_or_create_by(name: params[:artist].split("/").join(" "))
    @artwork.artist = artist

    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :edit
    end
  end

  def destroy
    @artwork.destroy

    redirect_to user_collections_path(current_user)
  end

  def search
    @collections = current_user.collections
    if params[:query] == ""
      redirect_to search_artworks_path
    elsif params[:query]
      user_input = params[:query]
      url = "https://www.wikiart.org/en/search/#{user_input}/1?json=2".gsub(" ", "-")
      response = HTTParty.get(url)

      @artworks = response.map do |artwork_data|
        Artwork.new(
          title: artwork_data["title"],
          completion_year: artwork_data["completitionYear"],
          tmp_image_url: artwork_data["image"],
          tmp_artist_name: artwork_data["artistName"]
        )
      end
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :photo, :artist, :artist_id, :completion_year, :description, :location, :notes, :collection_id, :img_url, :tmp_artist_name, :tmp_image_url)
  end

  def artwork_params_with_cropped_image
    params.require(:artwork).permit(:title, :artist_id, :completion_year, :description, :location, :notes, :collection_id, :img_url, :tmp_artist_name, :tmp_image_url)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def wikiart_artwork_params
    params.require(:artwork).permit(:title, :photo, :artist_id, :completion_year, :description, :location, :notes, :collection_id, :img_url, :tmp_artist_name, :tmp_image_url)
  end

  def build_new_artwork
    if params[:cropped_image] != "" && params[:cropped_image] != "data:,"
      @artwork = Artwork.new(artwork_params_with_cropped_image)
      @artwork.photo.attach(data: params[:cropped_image])
    else
      @artwork = Artwork.new(artwork_params)
    end
  end
end



