class CreateTaskerComments < ActiveRecord::Migration[7.1]
  def change
    create_table :tasker_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tasker, null: false, foreign_key: true
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
