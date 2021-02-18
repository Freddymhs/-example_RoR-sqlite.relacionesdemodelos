class CreateProtectors < ActiveRecord::Migration[6.0]
  def change
    create_table :protectors do |t|
      t.string :watts
      t.string :va

      t.timestamps
    end
  end
end
