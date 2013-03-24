class ChangeBalanceTypeAccount < ActiveRecord::Migration
  def up
  	change_column :accounts, :balance, :integer
  end

  def down
  end
end
