class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates :first_name, :last_name, :address, :cpf, :city, presence: true
  has_many :games
  has_many :rentals

  mount_uploader :photo, PhotoUploader

end
