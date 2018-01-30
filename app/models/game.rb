class Game < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :console
  has_many :images, dependent: :destroy
  has_many :rentals
  validates :name, :description, :price, presence: true


  def owner
    user
  end
end
