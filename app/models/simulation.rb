class Simulation < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :appartement
end
