class TestController < ApplicationController
  skip_before_action :authenticate_user!

  def components
    @artwork = Artwork.new
  end

  def autocomplete
  end
end
