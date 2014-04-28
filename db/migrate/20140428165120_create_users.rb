class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :team
      t.string :speciality
      t.integer :normal_hours
      t.boolean :admin
      t.integer :line_manager

      t.timestamps
    end
  end
end
