class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      user = current_user
      @artwork_archive = user.artworks.where.not(artist_id: nil).sample
      @artworks = Artwork.joins(:collection).where.not(collections: { user: current_user }).reverse
    end
  end
end
