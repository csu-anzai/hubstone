class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients
  has_many :selections
  has_many :simulations
  has_many :appartements, through: :simulations
  validates :prenom, presence: true
  validates :nom, presence: true
  validates :carte_t, presence: true
end
