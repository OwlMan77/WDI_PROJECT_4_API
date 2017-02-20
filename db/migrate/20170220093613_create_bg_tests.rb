class CreateBgTests < ActiveRecord::Migration[5.0]
  def change
    create_table :bg_tests do |t|
      t.decimal(3,1) :bg_result
      t.date :date
      t.time :time
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
