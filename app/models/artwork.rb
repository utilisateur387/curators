class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :collection
end
