class CreateJoinTableServicesTaskers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :services, :taskers do |t|
      t.index [:service_id, :tasker_id]
      t.index [:tasker_id, :service_id]
    end
  end
end
