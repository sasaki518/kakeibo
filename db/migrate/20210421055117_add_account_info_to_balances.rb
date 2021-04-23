class AddAccountInfoToBalances < ActiveRecord::Migration[5.2]
  def change
    add_column :balances, :account_info, :string
    add_column :balances, :credit_card_info, :string
    add_column :balances, :digital_cash_info, :string
    add_column :balances, :certificate_info, :string
  end
end
