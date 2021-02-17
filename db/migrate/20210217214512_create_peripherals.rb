class CreatePeripherals < ActiveRecord::Migration[6.0]
  def change
    create_table :peripherals do |t|
      t.string :nombre
      t.string :marca
      t.string :inalambrico

      t.timestamps
    end
  end
end
