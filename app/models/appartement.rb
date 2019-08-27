class Appartement < ApplicationRecord
  has_many :simulations

  geocoded_by :ville
  after_validation :geocode, if: :will_save_change_to_ville?
end
