class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.integer :property
      t.integer :account
      t.integer :credit_card
      t.integer :digital_cash
      t.integer :certificate

      t.timestamps
    end
  end
end