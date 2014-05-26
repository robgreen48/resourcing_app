class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.integer :days_off
      t.integer :user_id
      t.datetime :month

      t.timestamps
    end
  end
end
