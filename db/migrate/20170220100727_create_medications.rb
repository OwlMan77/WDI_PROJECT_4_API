class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.float :total_basal
      t.float :carbs_ratio

      t.timestamps
    end
  end
end
