class Explore::ArtworksController < ApplicationController
  def index
    @artworks = Artwork.joins(:collection).where.not(collections: { user: current_user }).reverse()
  end

  def show
  end
end
