class ChangeTypeInAccounts < ActiveRecord::Migration
  def up
  	rename_column :accounts, :type, :account_type
  end

  def down
  end
end
