class Computer < ApplicationRecord
  has_many :hub_usbs
  has_and_belongs_to_many :protectors
end
