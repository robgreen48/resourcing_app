class AddDayRateToClientFees < ActiveRecord::Migration
  def change
    add_column :client_fees, :day_rate, :integer
  end
end
