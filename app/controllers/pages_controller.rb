class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      user = current_user
      @artwork_archive = user.artworks.sample
    end
  end
end
