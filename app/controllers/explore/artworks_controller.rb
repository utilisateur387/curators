class Explore::ArtworksController < ApplicationController
  def index
    # @artworks = Artwork.joins(:collections).where(collection: '3')
    # @artworks = Artwork.joins(:collections).where(collections: { user_id: 4 })

    # @collections = Collection.where.not(user: current_user)
    # @artworks = Artwork.where('collection_id = 3')
    # @artworks = Artwork.joins(:collections).where(collections: { user_id: current_user.id })

    # @artworks = Artwork.includes(:collections).where(collections: { user: 'example' })
    # @artwork = Artwork.includes(:collections).where("collection.user_id != ?", current_user.id)
    # User.includes(:posts).where(posts: { name: 'example' })
    # Artwork.includes(:collections)
    # raise
    @artworks = Artwork.joins(:collection).where.not(collections: { user: current_user})
  end

  def show
  end
end
