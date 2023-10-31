class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :tasker, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.string :schedule
      t.string :location
      t.boolean :accepted

      t.timestamps
    end
  end
end
