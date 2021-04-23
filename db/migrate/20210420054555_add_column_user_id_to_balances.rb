class AddColumnUserIdToBalances < ActiveRecord::Migration[5.2]
  def change
    add_column :balances, :user_id, :integer
  end
end
