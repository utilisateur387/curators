class Artwork < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :collection
  has_one :user, through: :collection

  # has_one_attached :photo
  has_one_base64_attached :photo

  validates :photo, presence: true

  attr_accessor :tmp_image_url, :tmp_artist_name
end
