class Artwork < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :collection
  has_one :user, through: :collection

  has_one_attached :photo

  validates :photo, presence: true
end
