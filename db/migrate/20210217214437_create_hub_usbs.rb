class CreateHubUsbs < ActiveRecord::Migration[6.0]
  def change
    create_table :hub_usbs do |t|
      t.string :nropuertos
      t.string :marca

      t.timestamps
    end
  end
end
