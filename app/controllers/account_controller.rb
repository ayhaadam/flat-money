class AccountController < ApplicationController
	def index
		@cash_accounts = Account.where( :account_type => "cash" )
		@credit_card_accounts = Account.where( :account_type => "credit_card" )
		@bank_accounts = Account.where( :account_type => "bank" )
		@emoney_accounts = Account.where( :account_type => "emoney" )
	end
	def new
		
	end
	def edit
		@account = Account.find(params[:id])
	end
end
