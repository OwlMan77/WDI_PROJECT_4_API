class CreateBgTests < ActiveRecord::Migration[5.0]
  def change
    create_table :bg_tests do |t|
      t.float :bg_result
      t.date :date
      t.time :time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
