class AddBalanceToAccount < ActiveRecord::Migration
  def change
  	add_column :accounts, :balance, :number
  end
end
