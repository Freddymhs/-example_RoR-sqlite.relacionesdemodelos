class AddIdComputerToHubUsbs < ActiveRecord::Migration[6.0]
  def change
    add_reference :hub_usbs, :computer, null: false, foreign_key: true, default: 1
  end
end
