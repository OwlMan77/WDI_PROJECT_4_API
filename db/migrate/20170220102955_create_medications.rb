class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :variety
      t.string :delivery_method
      t.timestamps
    end
  end
end
