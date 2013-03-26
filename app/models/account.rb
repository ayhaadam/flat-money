class Account < ActiveRecord::Base
	attr_accessible :description, :name, :not_count, :account_type, :user_id, :balance
	validates_presence_of :account_type, :message => "必須選擇帳戶種類"
	validates_presence_of :name, :message => "帳戶名稱不能為空白"
	validates_presence_of :balance, :message => "必須輸入餘額，至少為 0"
	scope :cash, where( :account_type => "cash" )
	scope :credit_card, where( :account_type => "credit_card" )
	scope :bank, where( :account_type => "bank" )
	scope :emoney, where( :account_type => "emoney" )
	scope :sum_balance, sum( :balance )
end
