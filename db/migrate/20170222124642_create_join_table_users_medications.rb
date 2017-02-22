class CreateJoinTableUsersMedications < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :medications do |t|
      # t.index [:user_id, :medication_id]
      # t.index [:medication_id, :user_id]
    end
  end
end
