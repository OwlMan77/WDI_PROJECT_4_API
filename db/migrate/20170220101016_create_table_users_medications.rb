class CreateTableUsersMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :table_users_medications do |t|
      t.string :user_id
      t.string :medication_id
    end
  end
end
