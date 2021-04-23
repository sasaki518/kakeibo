class AddDetailsToBalances < ActiveRecord::Migration[5.2]
  def change
    add_column :balances, :year, :integer
    add_column :balances, :month, :integer
  end
end
