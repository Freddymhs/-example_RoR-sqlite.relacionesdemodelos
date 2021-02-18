class CreateComputers < ActiveRecord::Migration[6.0]
  def change
    create_table :computers do |t|
      t.string :marca
      t.string :pulgadas
      t.string :so

      t.timestamps
    end
  end
end
