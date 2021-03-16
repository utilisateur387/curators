class Favorite < ApplicationRecord
  belongs to :user
  belongs to :artwork
end
