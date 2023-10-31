class CreateTaskers < ActiveRecord::Migration[7.1]
  def change
    create_table :taskers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.string :profile_picture
      t.text :description
      t.integer :phone_number
      t.integer :rating

      t.timestamps
    end
  end
end
