class CreateClientFees < ActiveRecord::Migration
  def change
    create_table :client_fees do |t|
      t.integer :fee
      t.integer :client_id
      t.integer :day_rate
      t.datetime :month

      t.timestamps
    end
  end
end
