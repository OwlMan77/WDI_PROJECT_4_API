class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.decimal(3,1) :total_basal
      t.decimal(3,1) :carbs_ratio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
