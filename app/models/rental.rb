class Rental < ApplicationRecord
  belongs_to :user # Quem alugou
  belongs_to :game
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id' # Dono do jogo

  scope :owner_rentals, -> (current_user) { where(owner_id: current_user.id) }
end
