class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :team
      t.integer :account_director

      t.timestamps
    end
  end
end
