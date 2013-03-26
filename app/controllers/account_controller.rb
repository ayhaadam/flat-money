class AccountController < ApplicationController
	before_filter :authenticate_user!
	def index
		@all_user_accounts = Account.where(:user_id => current_user.id)

		@credit_card_accounts = @all_user_accounts.where( :account_type => "credit_card" )
		@credit_card_sum = @credit_card_accounts.sum("balance")
		
		@bank_accounts = @all_user_accounts.where( :account_type => "bank" )
		@bank_sum = @bank_accounts.sum("balance")
		
		@emoney_accounts = @all_user_accounts.where( :account_type => "emoney" )
		@emoney_sum = @emoney_accounts.sum("balance")

		@uid = current_user.id
	end
	def new
		@account = Account.new
	end
	def edit
		@account = Account.find(params[:id])
	end
	def create
		@account = Account.new(params[:account])
		@account.user_id = current_user.id
		if @account.save
			redirect_to :action => :index
		else
			render :action => :new
		end
	end
end