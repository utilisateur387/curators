class Collection < ApplicationRecord
  belongs_to :user
  has_many :artworks

  validates :name, presence: true, uniqueness: { scope: :user_id }
end
