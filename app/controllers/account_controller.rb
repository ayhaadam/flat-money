class AccountController < ApplicationController
	before_filter :authenticate_user!
	def index
		@cash_accounts = Account.where( :account_type => "cash", :user_id => current_user.id )
		@cash_sum = Account.sum("balance", :conditions => { :account_type => "cash", :user_id => current_user.id })
		@credit_card_accounts = Account.where( :account_type => "credit_card", :user_id => current_user.id )
		@credit_card_sum = Account.sum("balance", :conditions => { :account_type => "credit_card", :user_id => current_user.id })
		@bank_accounts = Account.where( :account_type => "bank", :user_id => current_user.id )
		@bank_sum = Account.sum("balance", :conditions => { :account_type => "bank", :user_id => current_user.id })
		@emoney_accounts = Account.where( :account_type => "emoney", :user_id => current_user.id )
		@emoney_sum = Account.sum("balance", :conditions => { :account_type => "emoney", :user_id => current_user.id })
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