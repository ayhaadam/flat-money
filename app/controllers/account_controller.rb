class AccountController < ApplicationController
	def index
		@cash_accounts = Account.where( :account_type => "cash" )
		@credit_card_accounts = Account.where( :account_type => "credit_card" )
		@bank_accounts = Account.where( :account_type => "bank" )
		@emoney_accounts = Account.where( :account_type => "emoney" )
	end
	def new
		@account = Account.new
	end
	def edit
		@account = Account.find(params[:id])
	end
	def create
		@account = Account.new(params[:account])
		if @account.save
			redirect_to :action => :index
		else
			render :action => :new
		end
	end
end