class AddDayRateToClients < ActiveRecord::Migration
  def change
    add_column :clients, :day_rate, :integer, :default=> 950
  end
end
