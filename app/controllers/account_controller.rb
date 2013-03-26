class AccountController < ApplicationController
	before_filter :authenticate_user!
	def index
		@all_user_accounts = Account.where(:user_id => current_user.id)

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
