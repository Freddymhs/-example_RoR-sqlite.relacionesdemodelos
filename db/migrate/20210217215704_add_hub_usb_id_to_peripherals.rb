class AddHubUsbIdToPeripherals < ActiveRecord::Migration[6.0]
  def change
    add_reference :peripherals, :hub_usb, null: false, foreign_key: true, default: 1
  end
end
