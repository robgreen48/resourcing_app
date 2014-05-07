class CreatePlannedHours < ActiveRecord::Migration
  def change
    create_table :planned_hours do |t|
      t.integer :number
      t.integer :client_id
      t.integer :user_id
      t.datetime :month

      t.timestamps
    end
  end
end
