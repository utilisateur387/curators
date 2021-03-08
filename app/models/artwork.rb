class Artwork < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :collection
  belongs_to :user, through: :collections

  has_one_attached :photo

  validates :photo, presence: true
end
