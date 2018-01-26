class Game < ApplicationRecord
  belongs_to :user
  belongs_to :console
  has_many :images
  has_many :rentals
end
