class Appartement < ApplicationRecord
  has_many :simulations

  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?

  PIECES = ["1P", "2P", "3P"]
  LIVRAISON = ["T4 2019", "T1 2020", "T2 2020", "T3 2020", "T4 2020", "T1 2021", "T2 2021", "T3 2021", "T4 2021"]
  ACTABILITE = ["actable", "non-actable"]
  DISPONIBILITE = ["Disponible", "Indisponible"]

end
