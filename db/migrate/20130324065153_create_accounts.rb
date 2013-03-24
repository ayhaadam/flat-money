class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :name
      t.string :type
      t.text :description
      t.boolean :not_count

      t.timestamps
    end
  end
end
