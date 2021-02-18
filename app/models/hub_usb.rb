class HubUsb < ApplicationRecord
  has_many :peripherals
  belongs_to :computer
end
