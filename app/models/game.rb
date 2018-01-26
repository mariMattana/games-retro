class Game < ApplicationRecord
  belongs_to :user
  belongs_to :console
  has_many :images, dependent: :destroy
  has_many :rentals
  validates :name, :description, :price, presence: true
end
