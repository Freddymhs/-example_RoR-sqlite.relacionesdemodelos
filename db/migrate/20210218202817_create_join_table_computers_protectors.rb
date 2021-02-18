class CreateJoinTableComputersProtectors < ActiveRecord::Migration[6.0]
  def change
    create_join_table :computers, :protectors do |t|
      t.index %i[computer_id protector_id]
      t.index %i[protector_id computer_id]
    end
  end
end
