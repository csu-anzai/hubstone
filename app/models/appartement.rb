class Appartement < ApplicationRecord
  has_many :simulations

  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
end
