class TransactionsController < ApplicationController
	def index
		@transaction = Transaction.all
	end

	def show
		@transaction = Transaction.find(params[:id])
	end

	def new
		@expense_list = ExpenseList.find(params[:expense_list_id])
		@transaction = Transaction.new
	end

	def edit
		@transaction = Transaction.find(params[:id])
	end

	def create
		@expense_list = ExpenseList.find(params[:expense_list_id])
		@transaction = @expense_list.transactions.build(params[:transaction])
		@transaction.save
		redirect_to @expense_list
	end

	def update
		transaction = Transaction.find(params[:id])
	end

	def destroy
		transaction = Transaction.find(params[:id])
	end
end		