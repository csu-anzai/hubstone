class Client < ApplicationRecord
  belongs_to :user
  has_many :simulations

  validates :prenom, presence: true
  validates :nom, presence: true
  validates :civilite, presence: true
end
